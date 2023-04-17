import Head from 'next/head'
import Link from 'next/link'
import Script from 'next/script'

export default function FirstPage() {
    return (
        /* @pjs preload="processing.js","myProgram.pde"; */
        <div>
            <Head>
            </Head>
            <Script src="https://cdnjs.cloudflare.com/ajax/libs/processing.js/1.6.0/processing.min.js"  strategy='beforeInteractive'></Script>
            <Script type="text/javascript" src="/static/processing.js"  strategy='beforeInteractive'></Script>
            <ol>
                <h2><li>Name</li></h2>
                <h3>My name is Si Hyun Jang</h3>
                <h2><li>Age</li></h2>
                <h3>I was born on December 12, 2004 and I'm 18 years old</h3>
                <h2><li>Hobby</li></h2>
                <h3>My hobby is taking pictures, especially landscape photography</h3>
            </ol>
            <canvas data-processing-sources="/static/myProgram.pde"></canvas>
            <Link href="/">Back to home</Link>
            
            
        </div>
    )
}
