import nivoLogo from '../assets/logo-nivo.svg'
import { Badge } from './ui/badge'

export function Header() {
    return (
        <div className="max-w-[1200px] mx-auto flex items-center justify-between">
            <div className=" flex items-center gap-3">
                <div className=" flex items-center gap-2.5">
                    <img src={nivoLogo} alt="nivo.video" />

                    <Badge>BETA</Badge>
                </div>
            </div>
        </div>
    )
}