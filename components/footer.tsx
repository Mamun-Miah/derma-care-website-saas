import Image from "next/image";
export default function Footer() {
  return (
    <footer className="border-t border-border bg-background py-12">
      <div className="mx-auto max-w-6xl px-4 sm:px-6 lg:px-8">
        <div className="grid gap-8 md:grid-cols-4 mb-8">
          <div>
            <div className="flex items-center gap-2 mb-4">
             
                {/* <span className="text-sm font-bold text-primary-foreground">D</span> */}
                <Image src="/logo.png" alt="DermCare HMS Logo" width={200} height={24} />
             
              {/* <span className="font-bold text-foreground">DermCare HMS</span> */}
            </div>
            <p className="text-sm text-foreground/60">Clinic management software built for dermatologists</p>
          </div>
          <div>
            <h4 className="font-semibold text-foreground mb-4">Product</h4>
            <ul className="space-y-2 text-sm text-foreground/60">
              <li>
                <a href="#" className="hover:text-foreground transition">
                  Features
                </a>
              </li>
              <li>
                <a href="#" className="hover:text-foreground transition">
                  Pricing
                </a>
              </li>
              <li>
                <a href="#" className="hover:text-foreground transition">
                  Security
                </a>
              </li>
            </ul>
          </div>
          <div>
            <h4 className="font-semibold text-foreground mb-4">Company</h4>
            <ul className="space-y-2 text-sm text-foreground/60">
              <li>
                <a href="#" className="hover:text-foreground transition">
                  About
                </a>
              </li>
              <li>
                <a href="#" className="hover:text-foreground transition">
                  Blog
                </a>
              </li>
              <li>
                <a href="#" className="hover:text-foreground transition">
                  Contact
                </a>
              </li>
            </ul>
          </div>
          <div>
            <h4 className="font-semibold text-foreground mb-4">Contact</h4>
            <ul className="space-y-2 text-sm text-foreground/60">
              <li>📞 +880 XXXX-XXXXXX</li>
              <li>✉️ hello@dermcare-hms.com</li>
              <li>💬 WhatsApp: 9 AM – 9 PM</li>
            </ul>
          </div>
        </div>
        <div className="border-t border-border pt-8 text-center text-sm text-foreground/60">
          <p>© 2025 DermCare HMS. All rights reserved.</p>
          <p className="mt-2">Because your expertise deserves better than spreadsheets and sticky notes.</p>
        </div>
      </div>
    </footer>
  )
}
