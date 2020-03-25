X-GM-THRID: 6807662174396219392
X-Received: by 2002:a63:fc52:: with SMTP id r18mr442950pgk.96.1585096326093;
        Tue, 24 Mar 2020 17:32:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9416:: with SMTP id r22ls541166pjo.0.canary-gmail;
 Tue, 24 Mar 2020 17:32:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvIvgQGDkK6YsUxHNwXEmmTrzH56m0L8beWV4ScpcusTWkgL6QQThd9x9qeRd0cWzwcMA8K
X-Received: by 2002:a17:902:a40e:: with SMTP id p14mr631508plq.295.1585096324261;
        Tue, 24 Mar 2020 17:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585096324; cv=none;
        d=google.com; s=arc-20160816;
        b=k2avC8W7vSf4ymCeJMm49WLKSU2SwrtZnha7tgYHbW/Nrvf1m4+O3GWC23eGzcQDBt
         E5d2rMmG35H9JYoxc0Stx4bWIuahrWQgv1w56cipC4WGsu0QCtREm9my3lMyualX7U3P
         8mcneD9kHMwJPGRlj5XDxhuzufbuT8W7SAq6sh4dOD06LHLcTdC6V2wLfsyLg0+sypLZ
         o1M43yhsGZIm4SUcFaKExWmaEBtqVivx1CuMkNoyUXJhGSTN4JM9e7KyoRHQ1guEICka
         ZEwGCdnj8G+98glTzHM0z7Nf+vxZoPBIpsWFtbeNNpvRQoDtMyeRbXX/4PTxuHSaLieM
         uHpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=8xIK9bPtyTSs1rRRwkqnc2VYMhGtQxS/7hdBwsxjSVo=;
        b=OPaGDJkI8ccWLXoB4vVRo6im6NL28/OHu5PhmLT9MubeZM66cfxT3dOGIR2E88+Vt9
         vHQblcv/AnV1OGW9/AjuUjrrryBhuiVd2V/D6SFtGcemna9h5b4w52ufeAiJBGunzHZE
         sHVBvV+8lSLR7IEkAN2LN8lWBjeDYyDEQAoynQXzlI7oL4uKI7sbESivg8swd8/jVyNg
         RRMDw9Bt0dfZ6gXGwwCQakRDJJJxOXHv8pbovj1WW6/LMpPv2AU+/hK5NcS6YYvcSPHq
         al5XPGMsBjqelbxz+tB3HTvpMLD7Mo6mKrrXvGFo+SwlwCictZuPOCVgirt1TmOYbKD9
         hGrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZHD4zEmm;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id 74si1050433pfy.0.2020.03.24.17.32.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 17:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZHD4zEmm;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id e9so543730oii.1
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 17:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=8xIK9bPtyTSs1rRRwkqnc2VYMhGtQxS/7hdBwsxjSVo=;
        b=ZHD4zEmmGWT1F4JmU5EAqE6q31RXPU6hNI5M5Iw0VKbjVuOBlkB456m5/CPM7kbpyo
         4y+um0K8bT8bLbHZNq/K8Iq/MDTb+hMwGGMiovzv1tHZhJfnT/je6M2j35L5Vl3OZb3x
         poiLFJunHnEknNpSbdlr53oEmt7svz9KLOQzjo05DXWENHtoTRYTSokGXdLzuDs4NPYj
         kCC8SqL++Kq5SZ4Hh0VcxWhuR7PU+A8IX8kqT26r28sYHGCWcemn+ekVj7WqhfNje2wt
         DZXwX8Jw4kxFIfAgakpyOaRuSnjMpvFVIlpmwkJOrqzUN0OEpQxzfGf15DhY8GloytRa
         PCpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=8xIK9bPtyTSs1rRRwkqnc2VYMhGtQxS/7hdBwsxjSVo=;
        b=aG8OF04zVdrJnZJG/JIxffgWQ/c1NOBgscstiHpg9vC12slTZ6HpnjZeDgmiD1yUrf
         2mhkG6JMJv3GQAQaCDtcG48vCl/7ya7RiupkVOtyOHZToHk0XIt3Mct/7IMJy7fGmIcW
         lEYFr+nf34BskYK2kaT3cB58AKJzjsD0ZwvE6oU27/KgATBnZsn3k3kHpGshoilIQKws
         Q5hrSf70ilTwVNn9VDWEDSCj0LHeiEqnBg99IOcVoGpd+AK9JTKYgWRcxCkfBzR5P3if
         essmvJq82qkMKXffphC0SCubs40Y6cBHhoADrPNq4Zp1ct/gWjUJxNRzjm9RXxzsz753
         +b6w==
X-Gm-Message-State: ANhLgQ1LIE8SPCXG2iFy0tFLCbFslQKC/gKXMLlQftuqb+q9TWYMeaUq
	A2Ta3ASnkj/la0Ppsg+SYJc=
X-Received: by 2002:aca:acd5:: with SMTP id v204mr682173oie.124.1585096323621;
        Tue, 24 Mar 2020 17:32:03 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from localhost.localdomain ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id s199sm415398oos.27.2020.03.24.17.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 17:32:02 -0700 (PDT)
Message-ID: <575f10ed4f3be74c2515464220d17e17d9eae8dc.camel@gmail.com>
Subject: Re: [PATCH 1/2] staging: vt6656: remove unneeded variable: ret
From: John Wyatt <jbwyatt4@gmail.com>
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
  Malcolm Priestley <tvboxspy@gmail.com>, Forest Bond
 <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@inria.fr>, Stefano
 Brivio <sbrivio@redhat.com>
Date: Tue, 24 Mar 2020 17:32:01 -0700
In-Reply-To: <20200324100323.GB7693@jiffies>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
	 <20200324064545.1832227-2-jbwyatt4@gmail.com>
	 <20200324100323.GB7693@jiffies>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-24 at 10:03 +0000, Quentin Deslandes wrote:
> On 03/23/20 23:45:44, John B. Wyatt IV wrote:
> >  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> 
> This function, and all the functions called in vnt_radio_power_on()
> returns
> a value, why don't you catch it and act accordingly (forward error
> code

Hi Quentin,

I do not know what these functions do.

There is no function documentation for:
vnt_exit_deep_sleep
vnt_mac_reg_bits_on
vnt_mac_reg_bits_off

I am a new kernel developer intern with the Outreachy program. I am
trying to fix a style issue reported by Coccinelle. I do not have that
much experience with writing drivers yet.

I have CC'ed the developers listed by git blame + the outreachy
mentors.

(Rithvik Patibandla's name shows up for one of the functions, but the
email is not listed by get_maintainer.)

Please advise.


