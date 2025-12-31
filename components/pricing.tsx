import { Check } from "lucide-react"
import { Button } from "@/components/ui/button"

const features = [
  "Unlimited doctors & staff",
  "Unlimited patients & appointments",
  "Full prescription & invoicing engine",
  "Patient portal with e-commerce + LMS",
  "Treatment & medicine catalogs",
  "Bkash + cash payment tracking",
  "Daily backups + 99.5% uptime",
  "Email + WhatsApp support",
]

export default function Pricing() {
  return (
    <section id="pricing" className="py-20 sm:py-32 ">
      <div className="mx-auto max-w-4xl px-4 sm:px-6 lg:px-8">
        <div className="text-center space-y-4 mb-16">
          <h2 className="text-3xl sm:text-4xl font-bold text-foreground">Simple, Transparent Pricing</h2>
          <p className="text-lg text-foreground/60">Everything you need to run your dermatology clinic</p>
        </div>

        <div className="rounded-2xl border border-border bg-background p-8 sm:p-10">
          <div className="text-center mb-8">
            <h3 className="text-3xl font-bold text-foreground mb-2">BDT 5,000/month</h3>
            <p className="text-foreground/60 mb-4">Per clinic • Unlimited everything</p>
            <p className="text-sm text-foreground/60 space-x-3">
              <span>✔ No setup fee</span>
              <span>✔ No contract</span>
              <span>✔ Cancel anytime</span>
            </p>
          </div>

          <div className="space-y-4 mb-8">
            {features.map((feature, idx) => (
              <div key={idx} className="flex items-center gap-3">
                <Check className="h-5 w-5 text-accent flex-shrink-0" />
                <span className="text-foreground">{feature}</span>
              </div>
            ))}
          </div>

          <Button className="w-full bg-primary-theme text-primary-foreground hover:bg-primary/90 h-12 text-base">
            Contact Sales
          </Button>
          <p className="text-center text-sm text-foreground/60 mt-4">
            Or{" "}
            <a href="#" className="text-primary hover:underline">
              book a 10-min demo
            </a>{" "}
            to see it live with your workflow
          </p>
        </div>
      </div>
    </section>
  )
}
