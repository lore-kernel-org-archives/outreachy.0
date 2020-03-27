X-GM-THRID: 6807662174396219392
X-Received: by 2002:a63:4752:: with SMTP id w18mr1282123pgk.379.1585345485446;
        Fri, 27 Mar 2020 14:44:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls6815154pfy.11.gmail; Fri, 27 Mar
 2020 14:44:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtvtqsaIWx6+/WUoNaoFNNWoLuMlozv0XVJRPVhiH9InzMD9HopMzRnq9Tv/v50AM9J0mSh
X-Received: by 2002:a62:7cc9:: with SMTP id x192mr1389300pfc.176.1585345483849;
        Fri, 27 Mar 2020 14:44:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585345483; cv=none;
        d=google.com; s=arc-20160816;
        b=CgmVqgiJ61VaF4x6AnIbVXTWgbV8ttLX8FxOuoYsvtoIcT7NawS9h1E1to9QP4EZCR
         bE10Pa0bE9FoTvrHKlg1E0JPdFDwkcnrgx16XDqsc3fgNKCa0YED6nuJsJXbPacpOL9E
         QrNbgaiFC+llYYu4ayGj64Kbal+w+EGXjbgMFZxz5GcKv4JhlSLuzoExil9gmolxxsb6
         f2nzqjajGnRmRp0siNF87WqB4t3hrYCeqQzuUyXXjMxLeRzOFUEJ+ChcNjLzuc2xXNIO
         IeSkIVzy+vHQJ/0R+n9+EQNTMn2DU1SrEwoOAfwhtljT9OYVNKYc6qA/eW5s9lffSGG9
         BRCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=5HJv7Iog8cJPccdRK5Z79PrFKiuvmMEUMeUI3IpZARY=;
        b=vpg8zyqs8rQzHBBlstrOCrQl70RulRHnR0VICKyI3TlHjY+eRKuwvkhhEPmXQdb0bP
         jw8oAv8SM1bVGPURSkGb0ye4XOQUn083adAb+TqAq0UlPZCWFj+3DlFRY4s+U5l8MAO/
         e9/ALHD6Dy9OPUalUbdkXS4ptw29Xv/CTDmEuYBlZt9JCsbW8c7bxhtJt2L79E2vwz8W
         bdZxIecHDDmuAUDATrIEUVNBveu8ZuYBi1EZzKV4dtbAZjCEoC2ciuUqX++7wu/FghCw
         FLpIFfXOjPHJJd2YXe5PYBT2/jHnW/ou3mE/2ZBzoi/pVqOlIMoEbv+Ublp0dSrSnBx5
         Lx7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTIgAhlY;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id f8si633180pjw.3.2020.03.27.14.44.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 14:44:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTIgAhlY;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id a49so11343702otc.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 14:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=5HJv7Iog8cJPccdRK5Z79PrFKiuvmMEUMeUI3IpZARY=;
        b=ZTIgAhlYElieXHUHU4KbN7quUEKh77ZdvqFfd8XbUpk4RUtQwQHvSIwwn9J5per+Ij
         GwquANiS2+/Ac9nqni0ZWVm4kZuJNovtrjHn+/Vo2P8CHtebdxzH1w9oWQfxamUSaUho
         BmwuYkNbIHJkFWQwCPJ4Q0yYAT6CtXQsop/KVCyof6BqmpK6xCS55BrYIesC3425xBZ8
         /eXJ+LuyA3m7PPFsRngM6wfwrL+CuB0E3bb3+TTGIkeCkZJvglZt5Vm1qTf/kSVaPoDc
         WJgOT1dLOPJomt5C34MI78VJs40ke1H/wWF4CHtkxifEpD5webTvQOU7nEvsyTqDNjZk
         1uXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=5HJv7Iog8cJPccdRK5Z79PrFKiuvmMEUMeUI3IpZARY=;
        b=YU/fhXyiPx1T3fUPaXStrWW1FxYGDC2auuH0NxIe0YhperFpF3eWy1ZDwumKTu+cjX
         7f7fBdSIYFLt20fOvFTUXSCJZkNBxqmfXBuTjKDl9DBZhmXhQTx5BTPYpYjqt8RaKP6S
         TMzRvl+mrw5Y1j2QBoHlYJH5C+jDHvy+dcegZ1xUMWMWxK4wea/LPyjC0bl7JbCQpDCm
         Ldg3JEa/xZNdVppY+Uwr2uB9j/sRjBdFvyUjUJsQjIS3DBl0heILsUiIQy8rbLiXLhcQ
         IJGW9/UuwMDLopYas1LJpHheX9hNyN7pfIoLJKkcWVHJCm3BiE/IM9er3iPUFnNVV65B
         kM1Q==
X-Gm-Message-State: ANhLgQ0oQqu5g4YIZGpgkhlP9evW0yUZ9Tugp04OHHt7G40Ms1q/Rgxy
	RpWcU5/vKtSwq31oAwtQp+E=
X-Received: by 2002:a9d:264a:: with SMTP id a68mr611857otb.176.1585345483196;
        Fri, 27 Mar 2020 14:44:43 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id w3sm2157525otg.76.2020.03.27.14.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 14:44:42 -0700 (PDT)
Message-ID: <da5b1d5f6fd1f1d3155e923de6334e420e49d754.camel@gmail.com>
Subject: Re: [PATCH 1/2] staging: vt6656: remove unneeded variable: ret
From: John Wyatt <jbwyatt4@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Fri, 27 Mar 2020 14:44:37 -0700
In-Reply-To: <20200327063421.GG1601217@kroah.com>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
	 <20200324064545.1832227-2-jbwyatt4@gmail.com>
	 <20200324100323.GB7693@jiffies>
	 <575f10ed4f3be74c2515464220d17e17d9eae8dc.camel@gmail.com>
	 <20200325091541.GA15158@jiffies>
	 <61efe5ca2f1cb286d697504828b232455f2be44f.camel@gmail.com>
	 <20200327063421.GG1601217@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-27 at 07:34 +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 26, 2020 at 04:26:13PM -0700, John Wyatt wrote:
> > On Wed, 2020-03-25 at 09:15 +0000, Quentin Deslandes wrote:
> > > On 03/24/20 17:32:01, John Wyatt wrote:
> > > > I do not know what these functions do.
> > > > 
> > > > There is no function documentation for:
> > > > vnt_exit_deep_sleep
> > > > vnt_mac_reg_bits_on
> > > > vnt_mac_reg_bits_off
> > > 
> > > I understand, however discarding the return value of functions
> > > that
> > > could
> > > fail is not the best thing to do. Whatever those 3 functions are
> > > doing,
> > > you should rely on their return code, and if one of those fail,
> > > vnt_radio_power_on() should fail too.
> > > 
> > > > I am a new kernel developer intern with the Outreachy program.
> > > > I am
> > > > trying to fix a style issue reported by Coccinelle. I do not
> > > > have
> > > > that
> > > > much experience with writing drivers yet.
> > > 
> > > Don't worry, I'm not that experienced either. If my request is
> > > out of
> > > scope for an Outreachy mentee, a more experienced contributor
> > > will
> > > pop
> > > in the discussion.
> > 
> > To any of the Outreachy mentors please advise on what to do.
> > 
> > I was asked by Greg Kroah-Hartman to make this patch set, but
> > Quentin
> > Deslandes asked to return undocumented return codes for this patch
> > to
> > solve this coccinelle issue.
> 
> What do you mean by "undocumented return codes"?

No function comments like the one that I originally changed in the
first patch.

>   Just pick an error
> value that you think matches what went wrong and try that.  

I guess I thought it was more complicated than that. Stefano's
explanation helped me understand it.

> Worst thing
> is we review the patch and tell you to pick a different one :)
> 

Ideally I would like to minimize that. :)


