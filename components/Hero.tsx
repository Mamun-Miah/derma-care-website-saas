import Image from 'next/image';
function Hero() {
  return (
    <div
      className="
        h-[100vh]
        w-full
       bg-[#F8FAFC]
        flex
        items-center
        justify-center
        gap-18
      "
    >
        <div className=' '>
            <h1 className="text-[#0F172A] leading-snug text-5xl pb-4 font-bold">
        Smart Software for Modern <br></br>Dermatology Clinics.
      </h1>
      <p className='leading-relaxed pb-5 text-[#8B6B5E]'>Manage patients, prescriptions, treatments, inventory, <br></br>and billing securely and efficiently.</p>
      <button
            type="button"
            className="card-nav-cta-button hidden md:inline-flex border-0 py-3 bg-[#2563EB] rounded-[calc(0.75rem-0.2rem)] px-4 items-center h-full font-medium text-white cursor-pointer transition-colors duration-300"
            
          >
            Request a Demo
          </button>
        </div>
        <div>
        <Image
        src="/hms-hero-1.png"
        alt="Hero Image"
        width={500}
        height={500}
        
      />
        </div>
      
    </div>
  )
}

export default Hero

