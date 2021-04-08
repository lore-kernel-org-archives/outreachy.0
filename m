X-GM-THRID: 6948700002249080832
X-Received: by 2002:a05:6e02:b2c:: with SMTP id e12mr6455416ilu.161.1617881155503;
        Thu, 08 Apr 2021 04:25:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:c911:: with SMTP id z17ls842017iol.8.gmail; Thu, 08 Apr
 2021 04:25:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvh2vNEE+mVdY1Aumh7Z0OqXEYtmWa1yKMDtPrHiLpSOQ8Jh/tUqyeXIAszlCFIKltErlo
X-Received: by 2002:a5e:a90b:: with SMTP id c11mr6387086iod.71.1617881154808;
        Thu, 08 Apr 2021 04:25:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617881154; cv=none;
        d=google.com; s=arc-20160816;
        b=UWKZ06vTF6S/gjUswywQnZDDzP4tCxwA8G0V7lvqYtZ0F0z2ouVE21bXpYvAYG5Caa
         ggHoL06e9M+M2anWGhCM1XIAkiQe+wElIenr+513DXcATLhsGbWjz+sSXUrbeK3/tZFQ
         Ty7hZF/ng7VzzuFSsB9EwfEdS7bzWoxp/lQTKWRPKRy7p09HhySjNq5kE/wddQWO1HvB
         QAVKzuOJnRBl4Fy0CIa7d+U7RCfawZ+TcHIBDJbZL0z0svAhwvUXDtBBgLN9WUFHFyeP
         hDXLJEDAuispr+riMqzBiKZgpYjXQ4KF2YCrm8wC6h//oHf4SAddRacHjVMuixhvEG3B
         yUHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=495/Mma5t8WtW6O0PDJ3WLF/I9NqnxGNvXlyNCulN+w=;
        b=Hl7z26HO3dCKBuvW//y4kaN97709aVMky785Pr37A/DpACdSOaDIQrRiMXK7lck9BA
         9NOxiLi6VuFh6sInWAjifnbWXlMQBRv89xIqO+VPTk7Ns7KGulwvVFumdk2CXjatrB4q
         mAqYZMBV7kmiyDhi/89vvpK2lSabuaz6MV8dCelPNFPVBCPqdZAkWGWjlfbFjibQYVOA
         41Oi99rTURL1F2S9tD3OQRG5mSJdNaoJbCL/3/3/qMDAj2ZHhtWrTJZsopt8/oqnSKXI
         sxHvC1AuzrnOdvc40eAM2dLNrViYjjRY7zFAImKKN9HREhHxnvWc5VULMvwrDXR6HRbX
         CggA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ACrdyJbo;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id y8si1748820iom.1.2021.04.08.04.25.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 04:25:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ACrdyJbo;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x634.google.com with SMTP id p10so897244pld.0
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 04:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=495/Mma5t8WtW6O0PDJ3WLF/I9NqnxGNvXlyNCulN+w=;
        b=ACrdyJbo9p9Oy+FoSw2p+jHGxGky5oXtxbT/LeLz4YstN8nXbc74xExdgcP645utV8
         iTGv3mwcQS8dZPmKApvOIqyWA9LwfgloBQKhsa2OIA5RztWW0tMLrD8Jmk86tFmQT3mT
         zLng3dCm+jy74lpnXbEtdCKsXInaLLqfacVx3C+Q+Q3OBTGpYQCigxY9P25E8wGbktVq
         qx3lQyOxhgNenWWf36zh1+BH8JVN+8AiXJhBUaQ9jojABXQKPH7RLc9+07q5PLvnchOA
         SUNwt3K5WoyRF91UNcKKo304TtMKiqOxYqWf7JcMSeqih2filHA7AJ/v6wZrFKc708wV
         AeDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=495/Mma5t8WtW6O0PDJ3WLF/I9NqnxGNvXlyNCulN+w=;
        b=WwJuBm2X6UX+ZvuMmTdJNp0/VRXg4B7D2hb2j6dPv5f/OBNCoeH7G9MdlG8phc3ZwV
         bGracY2r7khLSKmvLubh1YzUcBglw8uw1AL1FGwjEQyPVUz2BvEF4wPTG+7BlPxc1fWb
         WWAVOauwmYWWagIZr7719WjOow2KAShM1y1WpnwpJyI7NgqiGgdj1/wyHjJQwRMeLIYM
         75Rc+2vdmaFT5DhBwVZOqL22AX2mi0gg1MOT8A8N/1utVJfWRfB2sTcKnh46Qi8x4cl/
         ccDj661toENo5svwsmtX79R0BJTx1drmljl7Gi8OtgcTHS+pQTkxhLmPSuh/CAgrHijN
         GRCw==
X-Gm-Message-State: AOAM532i8ZOnJnLftxUiUAD10NdZAaexKql4mtXmw2oITIxgqe1CoG0I
	HCyuIGZh6tV7VcnSIRfvvrE=
X-Received: by 2002:a17:902:7886:b029:e7:1052:adad with SMTP id q6-20020a1709027886b02900e71052adadmr7264350pll.75.1617881154077;
        Thu, 08 Apr 2021 04:25:54 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.46.75])
        by smtp.gmail.com with ESMTPSA id fv9sm9234517pjb.23.2021.04.08.04.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 04:25:53 -0700 (PDT)
Date: Thu, 8 Apr 2021 16:55:45 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: added spaces around
 '+'
Message-ID: <YG7oOezBpYsi3Fr8@kali>
References: <YG690ZIRdCEcjoM6@kali>
 <alpine.DEB.2.22.394.2104081027100.3155@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104081027100.3155@hadrien>

On Thu, Apr 08, 2021 at 10:30:09AM +0200, Julia Lawall wrote:
> The subject line should be in the imperative, so "add" instead of "added".
> 
Ok Ma'am
> On Thu, 8 Apr 2021, Mitali Borkar wrote:
> 
> > Clean up Check:spaces preferred around that '+' (ctx:VxV)
> > Reported by checkpatch
> 
> Please try to rephrase to explain what you did and why.  "Clean up" kind
> of states what the goal is, but your opinion about what is a clean up
> might be different than someone else's.  It's also not necessary to cite
> the checkpatch warning exactly.
> 
OKay Ma'am, will rewrite the appopriate commit message. May I know while
resending this patch, what should I write in subject description, 
RESEND PATCH or PATCH v2

Thanks
Mitali

> julia
> 
> >
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/rtl8712/wlan_bssdef.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8712/wlan_bssdef.h b/drivers/staging/rtl8712/wlan_bssdef.h
> > index b54ccaacc527..ec3749813728 100644
> > --- a/drivers/staging/rtl8712/wlan_bssdef.h
> > +++ b/drivers/staging/rtl8712/wlan_bssdef.h
> > @@ -176,7 +176,7 @@ struct NDIS_802_11_WEP {
> >  #define MIC_CHECK_TIME	60000000
> >
> >  #ifndef Ndis802_11APMode
> > -#define Ndis802_11APMode (Ndis802_11InfrastructureMax+1)
> > +#define Ndis802_11APMode (Ndis802_11InfrastructureMax + 1)
> >  #endif
> >
> >  struct	wlan_network {
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YG690ZIRdCEcjoM6%40kali.
> >

