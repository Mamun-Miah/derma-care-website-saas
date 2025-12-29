import CardNav from '@/components/CardNav';
import Features from '@/components/features';
import Footer from '@/components/footer';
import Hero from '@/components/Hero';
import Journey from '@/components/journey';
import MagicBento from '@/components/MagicBento'
import Pricing from '@/components/pricing';
const logo = '/logo.png';

export default function Home() {
  const items = [
    {
      label: "About",
      bgColor: "#0D0716",
      textColor: "#fff",
      links: [
        { label: "Company", href: "/about/company", ariaLabel: "About Company" },
        { label: "Careers", href: "/about/careers", ariaLabel: "About Careers" }
      ]
    },
    {
      label: "Projects", 
      bgColor: "#170D27",
      textColor: "#fff",
      links: [
        { label: "Featured", href: "/projects/featured", ariaLabel: "Featured Projects" },
        { label: "Case Studies", href: "/projects/case-studies", ariaLabel: "Project Case Studies" }
      ]
    },
    {
      label: "Contact",
      bgColor: "#271E37", 
      textColor: "#fff",
      links: [
        { label: "Email", href: "mailto:contact@company.com", ariaLabel: "Email us" },
        { label: "Twitter", href: "https://twitter.com", ariaLabel: "Twitter" },
        { label: "LinkedIn", href: "https://linkedin.com", ariaLabel: "LinkedIn" }
      ]
    }
  ];
  return (
    <>
    <CardNav
      logo={logo}
      logoAlt="Company Logo"
      items={items}
      baseColor="#fffeeee"
      menuColor="#C06B59"
      buttonBgColor="#C06B59"
      buttonTextColor="#fff"
      ease="power3.out"
    />
    <Hero />
    <Features/>
    <Journey/>
    <Pricing/>
    <MagicBento 
      textAutoHide={true}
      enableStars={true}
      enableSpotlight={true}
      enableBorderGlow={true}
      enableTilt={false}
      enableMagnetism={false}
      clickEffect={true}
      spotlightRadius={300}
      particleCount={120}
      glowColor="192, 107, 89"
    />
    <Footer />
    </>
  );
}
