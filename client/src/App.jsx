// import React from 'react'
// import { CustomHook1 } from './CustomHook1'

// function App() {
//   // <CustomHook1/>
//   const {Counter, Increment, Decrement } = CustomHook1(0)
//   return (
//     <>

//     <div className="flex items-center justify-center text-8xl text-blue-500">{Counter}</div>
//     <div className='flex items-center justify-center space-x-6 text-6xl'>

//       <button onClick={Increment} className='border-cyan-200 rounded-3xl bg-green-300 border-2 w-max h-21 hover:bg-gray-100  hover:text-black hover:transition-all duration-200 hover:cursor-wait p-2'> plus </button>
//       <button onClick={Decrement}> minus</button>
//     </div>
//     </>
//     // Counter, Increment, Decrement
//   )
// }

// export default App

import React from 'react'
import { COunter } from './COunter'

function App() {
  const { count, press } = COunter(0);
  return (
    <div>
      <h1>{count}</h1>
      <button onClick={press}> press</button>
    </div>
  )
}

export default App