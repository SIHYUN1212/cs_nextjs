import Link from 'next/link'
export default function FirstPage() {
    return (
        <div>
            <ol>
                <h2><li>Name</li></h2>
                <h3>My name is Si Hyun Jang</h3>
                <h2><li>Age</li></h2>
                <h3>I was born on December 12, 2004 and I'm 18 years old</h3>
                <h2><li>Hobby</li></h2>
                <h3>My hobby is taking pictures, especially landscape photography</h3>
            </ol>
            <Link href="/">Back to home</Link>
        </div>
    )
}