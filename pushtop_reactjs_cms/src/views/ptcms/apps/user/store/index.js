// ** Redux Imports
import { createSlice, createAsyncThunk } from '@reduxjs/toolkit'

// ** Axios Imports
import axios from 'axios'

export const getAllRoles = createAsyncThunk('appUsers/getAllRoles', async params => {
  const response = await axios.get(`${process.env.REACT_APP_API_ENDPOINT}/api/role`, {params})
  return {
    role: response.data.roleInfo
  }
})

// export const getAllData = createAsyncThunk('appUsers/getAllData', async () => {
//   const response = await axios.get('/api/users/list/all-data')
//   return response.data
// })

export const getData = createAsyncThunk('appUsers/getData', async params => {
  const response = await axios.get(`${process.env.REACT_APP_API_ENDPOINT}/api/user`, {params})
  return {
    params,
    data: response.data.userInfo,
    countActiveUser: response.data.countActiveUser,
    countPendingUser:response.data.countPendingUser,
    totalUsers: response.data.totalUsers,
    totalPages: response.data.totalPages
  }
})

export const getUser = createAsyncThunk('appUsers/getUser', async id => {
  const response = await axios.get(`${process.env.REACT_APP_API_ENDPOINT}/api/user/${id}`)
  return response.data.userData
})

export const updateStatus = createAsyncThunk('appUsers/updateUser', async (params, { dispatch }) => {
  console.log(params)
  await axios.put(`${process.env.REACT_APP_API_ENDPOINT}/api/user`, {params})
  await dispatch(getUser(params.id))
  return response.data.userData
})

export const addUser = createAsyncThunk('appUsers/addUser', async (user, { dispatch, getState }) => {
  // await axios.post('/apps/users/add-user', user)
  await dispatch(getData(getState().users.params))
  await dispatch(getAllData())
  return user
})

export const deleteUser = createAsyncThunk('appUsers/deleteUser', async (id, { dispatch, getState }) => {
  // await axios.delete('/apps/users/delete', { id })
  await dispatch(getData(getState().users.params))
  await dispatch(getAllData())
  return id
})

export const appUsersSlice = createSlice({
  name: 'appUsers',
  initialState: {
    data: [],
    totalUsers: [],
    totalPages: 1,
    countActiveUser: [],
    countPendingUser: [],
    params: {},
    allData: [],
    role:[],
    selectedUser: null
  },
  reducers: {},
  extraReducers: builder => {
    builder
      // .addCase(getAllData.fulfilled, (state, action) => {
      //   state.allData = action.payload
      // })
      .addCase(getAllRoles.fulfilled, (state, action) => {
        state.role = action.payload.role
      })
      .addCase(getData.fulfilled, (state, action) => {
        state.data = action.payload.data
        state.params = action.payload.params
        state.countActiveUser = action.payload.countActiveUser
        state.countPendingUser = action.payload.countPendingUser
        state.totalUsers = action.payload.totalUsers
        state.totalPages = action.payload.totalPages
      })
      .addCase(getUser.fulfilled, (state, action) => {
        state.selectedUser = action.payload
      })
  }
})

export default appUsersSlice.reducer
