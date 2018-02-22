X-GM-THRID: 6525478094169440256
X-Received: by 10.80.189.195 with SMTP id z3mr2802377edh.8.1519337318535;
        Thu, 22 Feb 2018 14:08:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.133.197 with SMTP id q5ls2588279edh.1.gmail; Thu, 22 Feb
 2018 14:08:37 -0800 (PST)
X-Google-Smtp-Source: AH8x227rg7EwBmBq2MTyHKJG+Xr3Yhui25VlAZ5/iTnWDT/z7WvMWKGTmLMuEgl3AoH2YDgex9s2
X-Received: by 10.80.149.81 with SMTP id v17mr2805549eda.10.1519337316898;
        Thu, 22 Feb 2018 14:08:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519337316; cv=none;
        d=google.com; s=arc-20160816;
        b=MdnSWtDwGPiysxyIkbrCnC6N+4LTOevH7jmZr6SkXu6ouMgZOYB4d2w1b6/kqTyUYB
         m14fMIf9xLanZUsXU/LApcmoDPkDOxUMWRxU3NwVo1EUHFHbhktY2kk7i2LZh8QrWxPH
         gD2g4ZAWydm3Vob6ar6rHKy2OGC3KtyL+5dDBmyOP1QJ8IOyf+r8FrmofZmxpTf30FGT
         F9spjSZn4L7YcCDNKRc0rQJrNMNJ1AVjJcQNOvkMEVNRMnatVGsQ+SbqOqRwTSbcDPLF
         0ZY95+Tc02182/M3xX9ZJOtUbx96BXDbcBlcZULjqO62+h5XBG1UBsqRITz0MlAxs9xs
         yZIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ulTzFz2VnU1CH6lwyThyNhaCVOPdcVAmlZYIEfO6rwE=;
        b=A6Wx/PzlAIWQtgkYeDASKF2ia+eBOxHhztQcA7yd2iFNehPc0Y79teZ8GaxSUNb3Hj
         e3c2UUVz3VoSMVPPpT2eMuVHryHzZlSFpoYFjbIqHjircuLG2/OdeZekGPqx5VavwhKl
         VLz3K4jE0mZ33iEi8FSF9ih29YI2cKyOYEi4coIqQRoT2ZoKEP1VVjhwOEqV4t+tKZG2
         LNSQcqIzBjVVxKBh3pByW6o9fQKskDvr6lLhz0Se7fG7WIj+lsgbM+VOMj1nT7XY/zY7
         r1U3J+eEip/4+UQZ3etdfCS7yAByZVPP8KG52F8Lhn+UKU+5EHUZDYzSRBq+LBaVNViC
         +Y3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h9si76915edi.4.2018.02.22.14.08.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 14:08:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,380,1515452400"; 
   d="scan'208";a="255821197"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2018 23:08:36 +0100
Date: Thu, 22 Feb 2018 23:08:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [ERROR] Make won't run
In-Reply-To: <1519331234-14582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1802222306540.2227@hadrien>
References: <1519331234-14582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 23 Feb 2018, Nishka Dasgupta wrote:

> From: nishka.dasgupta_ug18@ashoka.edu.in
>
> I can't run make because the process exits with error messages at
> various files. I reset all my changes, manually undid them, and fetched
> and rebased the origin again for good measure, but even now files that I
> haven't touched (from init to android to other files in the same
> directory) are causing the make process to exit with errors (usually an
> "Input/Output Error" in some .o file).

How much space do you have on your disk?  The kernel is big, and creating
.o files makes it even bigger.

> I don't know what to do and would
> appreciate any assistance. (In case it helps, I was removing braces in a
> single line if statement on line 290 of
> drivers/staging/wilc1000/wilc_wfi_cfgoperations.c. Before that, Mr
> Kroah-Hartman had replied to an earlier commit pointing out that I had
> committed files that had no business being in this kernel, so I tried to
> roll back the commit with a git reset and then fetch the origin again.)

If things are not going well with your git tree, you could just delete the
whole thing and clone it again.

julia

> Thank you for your time.
>
> Regards,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519331234-14582-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

