const steps = [
  {
    number: 1,
    title: "Patient Books",
    description: 'Visitor books "Acne Consultation" on your website — just name + phone',
  },
  {
    number: 2,
    title: "Auto-Create Profile",
    description: "Receptionist confirms → system auto-creates patient profile",
  },
  {
    number: 3,
    title: "Doctor Prescribes",
    description: "Prescribe medications + multi-session treatments with auto-scheduling",
  },
  {
    number: 4,
    title: "Invoice & Payment",
    description: "Auto-generated invoice — patient pays deposit via Bkash",
  },
  {
    number: 5,
    title: "Patient Portal",
    description: "Patient gets access: views care plan, pays balance, buys products",
  },
  {
    number: 6,
    title: "Auto Reminders",
    description: "Receptionist sees next session and sends automated reminders",
  },
]

export default function Journey() {
  return (
    <section className="py-20 sm:py-20 bg-muted/50 ">
      <div className="mx-auto max-w-6xl px-4 sm:px-6 lg:px-8">
        <div className="text-center space-y-4 mb-16">
          <h2 className="text-3xl sm:text-4xl font-bold text-foreground">The Dermatology Patient Journey</h2>
          <p className="text-lg text-foreground/60">Seamless. Paperless. Profitable.</p>
        </div>
        <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
          {steps.map((step) => (
            <div key={step.number} className="relative">
              <div className="rounded-xl border border-border bg-card p-6">
                <div className="flex items-center gap-3 mb-3">
                  <div className="flex h-10 w-10 items-center justify-center rounded-full bg-primary-theme text-primary-foreground font-bold text-sm">
                    {step.number}
                  </div>
                  <h3 className="font-semibold text-foreground">{step.title}</h3>
                </div>
                <p className="text-sm text-foreground/60">{step.description}</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
