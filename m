X-GM-THRID: 6523882080322977792
X-Received: by 10.25.212.143 with SMTP id l137mr804387lfg.35.1518961879256;
        Sun, 18 Feb 2018 05:51:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.79 with SMTP id l76ls62441lfe.1.gmail; Sun, 18 Feb 2018
 05:51:17 -0800 (PST)
X-Google-Smtp-Source: AH8x225S3pc4m9dhex8iWpFRIhfV1bXqnUfTUPZbI72Y1Y5baZBrlFtxxWIzqJ8qczRaluRKCONl
X-Received: by 10.25.32.194 with SMTP id g185mr806416lfg.13.1518961877689;
        Sun, 18 Feb 2018 05:51:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518961877; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+h1Y1jCVJWCzbWYzMEs0I7iBeqMBxEXipD1EUZEAeB2PqyU3Ljz4KYu8IXCEnhlpI
         giEKHoDLtF5dk7w86wGcSrrMKEkcwITgZEYnDThd423S20F3HDzN+EtSgNT1P5yF4BMc
         S4DFw1PHK+LntAHOYHUcjnwa5REBb5kNFAuxdZh8DBe1owDpXQXIa1eZJMp2FsLpESX4
         9UcjPzRAUA+ZEawiz1lfgZRIwW673Kp7vNhG80Eh8myenzT60W6ANTMHaM4/RedetW7J
         gGBn1+dqv2x++txXo9cUYSB+jnDJFssnGocfACd6AlpodFSiCEwi7vN919bNaEJYWuz0
         +34g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=loclYKqg47eVXIX/GhfRGtnJJAVARLgBhVsDZLKP++o=;
        b=nFYAMEtEKkmHDFCghuoy0dqdF1UiE4zdr6dJWkDyqOEeyqla8BR6NRTewMaSw3ZjFS
         Fq39tc7TCBRXq9b9HcBd9JkWXe4iJ2Ua9ax2VbtDVTvkN36jWVFuEIS1yMzSZuBwCn/y
         iGl0Y22yrw9DRP9GUA3TP6+1QMggUifwkoy0OWLam3oeNHk4qF2HWCsZ44+Au0wt+5Q2
         q3oRHCQpgUrAdbjLXsssPF4XtR6nCrgPV5Je/QVNwkZBItH9pEuJ2h3B9n8MOHC70GGD
         s9fML/hRhvV7z1K36JdeTnbxudkmSjknmzaq5BZVyrXsfMMKyoJWNcDuQ4pr4yslUXp8
         iC2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w7si808599ljw.4.2018.02.18.05.51.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 05:51:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,530,1511823600"; 
   d="scan'208";a="255177952"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 14:51:16 +0100
Date: Sun, 18 Feb 2018 14:51:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [SETUP] Difficulty with dmesg
In-Reply-To: <e77d9c11-8e6a-410f-a58d-f57907b86ce8@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1802181450310.2777@hadrien>
References: <fca3a604-4d70-4feb-b7d2-2903b82f2c08@googlegroups.com> <alpine.DEB.2.20.1802181420580.2777@hadrien> <e77d9c11-8e6a-410f-a58d-f57907b86ce8@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Feb 2018, Nishka Dasgupta wrote:

> I tried that already, but it has not worked.

OK, unfortunately, I don't have any familiarity with the system you are
using.  But you could try changing your print message to KERN_EMERG.  Then
you should see it everywhere.

julia

>
> Thanking you,
> Nishka
>
> On Sunday, February 18, 2018 at 6:51:28 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Sun, 18 Feb 2018, Nishka Dasgupta wrote:
>
>       > When I run dmesg | less, the file is blank and the error I get
>       is "dmesg:
>       > klogctl failed: Function not implemented". Writing to the kmsg
>       file has no
>       > effect. I can't modify dmesg_restrict either. I am running
>       Ubuntu 14.04
>       > inside WSL (Windows 10). I would appreciate any assistance.
>
>       If you don't hear from anyone who has had this experience,
>       perhaps this
>       link could be useful:
>
>       https://github.com/Microsoft/WSL/issues/1886
>
>       julia
>
>       >
>       > Thanking you,
>       > Nishka
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-
>       b7d2-
>       > 2903b82f2c08%40googlegroups.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>       >
>
>
> On Sunday, February 18, 2018 at 6:51:28 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Sun, 18 Feb 2018, Nishka Dasgupta wrote:
>
>       > When I run dmesg | less, the file is blank and the error I get
>       is "dmesg:
>       > klogctl failed: Function not implemented". Writing to the kmsg
>       file has no
>       > effect. I can't modify dmesg_restrict either. I am running
>       Ubuntu 14.04
>       > inside WSL (Windows 10). I would appreciate any assistance.
>
>       If you don't hear from anyone who has had this experience,
>       perhaps this
>       link could be useful:
>
>       https://github.com/Microsoft/WSL/issues/1886
>
>       julia
>
>       >
>       > Thanking you,
>       > Nishka
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-
>       b7d2-
>       > 2903b82f2c08%40googlegroups.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>       >
>
>
> On Sunday, February 18, 2018 at 6:51:28 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Sun, 18 Feb 2018, Nishka Dasgupta wrote:
>
>       > When I run dmesg | less, the file is blank and the error I get
>       is "dmesg:
>       > klogctl failed: Function not implemented". Writing to the kmsg
>       file has no
>       > effect. I can't modify dmesg_restrict either. I am running
>       Ubuntu 14.04
>       > inside WSL (Windows 10). I would appreciate any assistance.
>
>       If you don't hear from anyone who has had this experience,
>       perhaps this
>       link could be useful:
>
>       https://github.com/Microsoft/WSL/issues/1886
>
>       julia
>
>       >
>       > Thanking you,
>       > Nishka
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-
>       b7d2-
>       > 2903b82f2c08%40googlegroups.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/e77d9c11-8e6a-410f-a58d-
> f57907b86ce8%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

