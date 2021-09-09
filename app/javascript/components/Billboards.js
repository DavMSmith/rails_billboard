import React from 'react'

const Billboards = () => {
  return (
        <h1>Billboards index</h1>
        <a href="/billboards/new">New Billboard</a>
        {
          Billboards.map( (billboard) => (
           <div>
             <h5>{billboard.title}</h5>
             <a href={`/billboards/${billboard.id}`}>Show</a>
             {''}
             <a href={`/billboards/${billboard.id}/edit`}>Edit</a>
             {''}
             <a href={`/billboards/${billboard.id}`}
             data-method="delete"
             >
               Delete
             </a>
            </div>
          ))
        }
      </>
    )
  }
export default Billboards;