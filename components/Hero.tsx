"use client";
import Image from "next/image";
function Hero() {
  return (
    <>
      <div
        className="
        min-h-screen
        h-auto
        w-full
       bg-[#F8FAFC]
        flex
        md:flex-row
        flex-col-reverse
        items-center
        justify-center
        md:gap-18
        gap-10
      "
      >
        <div className="md:p-0 px-10">
          <h1 className="text-[#0F172A] leading-tight md:text-6xl sm:text-4xl pb-4 font-bold">
            Run a Smarter,<br></br> Paperless<br></br> Dermatology Clinic
          </h1>
          <p className="leading-relaxed pb-5 text-[#8B6B5E]">
            Get appointment booking, digital prescriptions, auto-invoicing,
            <br></br> treatment tracking, patient portal, e-commerce all in one
            secure system.<br></br> Only BDT 5,000/month.{" "}
          </p>
          <button
            type="button"
            className="btn card-nav-cta-button border-0 py-3 bg-[#2563EB] rounded-[calc(0.75rem-0.2rem)] px-4 items-center font-medium text-white cursor-pointer transition-colors duration-300"
            onClick={() =>
              (
                document.getElementById("my_modal_3") as HTMLDialogElement
              ).showModal()
            }
          >
            Request a Demo
          </button>
        </div>
        <div className="md:p-0 px-10">
          <Image
            className="max-w-full"
            src="/hms-hero-1.png"
            alt="Hero Image"
            width={500}
            height={500}
          />
        </div>
      </div>
      <dialog id="my_modal_3" className="modal">
        <div className="modal-box bg-white">
          <form method="dialog">
            {/* if there is a button in form, it will close the modal */}
            <button className="btn btn-sm btn-circle btn-ghost absolute right-2 top-2">
              ✕
            </button>
          </form>
          <div className="text-center flex flex-col items-center justify-center space-y-5">
            <h3 className="font-bold text-lg">Submit Your Mail</h3>
            <div className="join">
              <div>
                <label className="input bg-[#eee2e0] validator join-item">
                  <svg
                    className="h-[1em] opacity-50"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                  >
                    <g
                      strokeLinejoin="round"
                      strokeLinecap="round"
                      strokeWidth="2.5"
                      fill="none"
                      stroke="currentColor"
                    >
                      <rect width="20" height="16" x="2" y="4" rx="2"></rect>
                      <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"></path>
                    </g>
                  </svg>
                  <input type="email" placeholder="mail@site.com" required />
                </label>
                <div className="validator-hint hidden">
                  Enter valid email address
                </div>
              </div>
              <button className="btn btn-neutral join-item">Send</button>
            </div>
            <p className="py-4">We will send demo link to your mail.</p>
          </div>
        </div>
      </dialog>
    </>
  );
}

export default Hero;
