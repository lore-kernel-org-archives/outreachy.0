X-GM-THRID: 6745991976602042368
X-Received: by 2002:a9d:7a8d:: with SMTP id l13mr5374976otn.351.1570673653747;
        Wed, 09 Oct 2019 19:14:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:1291:: with SMTP id g17ls414090otg.11.gmail; Wed, 09 Oct
 2019 19:14:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVBXowpVcmKmjScyRuWopGIla6suddOCqiRO7ZyzFTGmMZYdYWZADUdcRrSytYAyoruYhM
X-Received: by 2002:a05:6830:140c:: with SMTP id v12mr5812097otp.140.1570673652734;
        Wed, 09 Oct 2019 19:14:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570673652; cv=none;
        d=google.com; s=arc-20160816;
        b=hw/xpglTsl7zvq93F9Y7XK1hzfJOjmOkunIxtpI1w0YaVb6/LafVgmOqktQz10LXbY
         hvi7qvDPVuSlYjh36iIQ/zQ2uWMn5ZPoLEvq22hLZNYAvLQhig80wqrGT7gs0MK5HRzs
         n8ERZxMj+s8401wxt+RSTA/xFYHYVsa0xd6BqgHtXhQ85iuGS755MT3ev/ADmtZ8S8cS
         SpGpy4ydUijsGLlrE7F3gJXMV0mnwZSHHDmrFOrEZpymIs7rWGb+XCf+MPW4GXRfpn0B
         N+F2x3pV9cAwEqRhWcWORPRavCtA3BWiBwF9pj4pVToa6J8/bg3ItAalC8TWgsmzDtEh
         ig6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JH47SHI0eSHXXeHIyLe0VTm0AEqzA9q0DahcqmFGRTU=;
        b=KIgmCG57d4uhMXN1LNnw2bJcuqmAwMLG9CSqYz7WI1bVZ/GBEmE7ZmPJL/zclf56n9
         7a0PCNJzApfET/XQgcg9PSe4K9kwK9HrqGSuVS1XiFg2P6/e6PlC6OaMW9rMpYytaX4S
         Fff1kEBqKs4+zKBs8FtbNThOICGqx7B3EDmvxTxZSl8kheytRajODJGrTLjRg4U+GCjQ
         7G0mboV1wy8DWnhibWK3jdkT4/Xw62eqWOu6ZZ4q8u1G31QHYRVZx6Qb4TzsSJcoh+kT
         NWMG2sZfO/aox4OKw8pg4CObmMnGqp5izEe14XB2XkFf+qEsd7QaW5bqWDe+NNiQIfsb
         lZEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p7hduKRa;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id b11si458138oii.5.2019.10.09.19.14.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 19:14:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p7hduKRa;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x941.google.com with SMTP id k24so1432190uag.10
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 19:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=JH47SHI0eSHXXeHIyLe0VTm0AEqzA9q0DahcqmFGRTU=;
        b=p7hduKRaBdo/pKDkIMG1ki0JYMXgpx0O1eDuiH1K9ckjSWrLFOZaK5CcyClcHLk6mY
         QNqrS267ijoRQy2AxXofrFz2PXPc/5xgcxUfXaQkBSsy9neR5c8fkdjQBOQ98WiW76Lw
         xfQ4HYXuWjGL+lj4ylJIx09SFry0DjPGJoaPzlZ1KWhSNfwtRDTOC/aODLJaaUuPL9ZK
         eqptN01jCGblw9SQZHoGzlg6u38e3V8XoaKu1KWAbIIxirUg/aIsAogWCh/nf11fQatJ
         w7PG6DatGSHlGmr01T373cs6VE+LXHfqVtXq+rBVU0skAOtXdThKiSQ7m+SstFN9akrq
         soUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=JH47SHI0eSHXXeHIyLe0VTm0AEqzA9q0DahcqmFGRTU=;
        b=osa0RNNVUVSH85sda2Ohe7SoKNj2OLNzz6b1QcPM4XP9JYpLJmmnSPKcGaGeYgUJPu
         b2RSv0kYVkmrQv8Iv1U8U62VSsyhABlNCgNwGatpAlAZ6E2KhhEWr2+Ywth0t9YYkeUx
         NPG+0sWcdfdTFKoIRx7lekmhZ1VQ0Xu5SLT4uGkYduxcGOPa3QBaHDCDAdfo/ZemEvYN
         1zIwc5egzYyzXn0qNPNYyrz7y54bbg0LcsDiUIPb9ulyAVQJdeTlfQotdXPrpmsKWYHc
         CIemMkcQ2vJbHiMTXarDztBdqclvjoPgo5PVdC6ySAqUYP3uOcbEfHLihVXQEx43/EEl
         KU0Q==
X-Gm-Message-State: APjAAAXWCz+P1yB5kDsFAkP4Acd9LLaRsiJbNE+/C6F4gt6KtkUyVuEw
	UOJRfnkFnaE71zsdBl6qrbaib7ADCHEPGg==
X-Received: by 2002:ab0:5bdb:: with SMTP id z27mr446715uae.118.1570673652255;
        Wed, 09 Oct 2019 19:14:12 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id f1sm1122126vsc.20.2019.10.09.19.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 19:14:11 -0700 (PDT)
Date: Wed, 9 Oct 2019 21:14:09 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: rtl8723bs: Clean-up tasks
Message-ID: <cover.1570672544.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

This patchset would remove unnecessary code, improve formatting
and fix some warnings found by checkpatch.

Javier F. Arias (4):
  staging: rtl8723bs: Remove commented code
  staging: rtl8723bs: Remove duplicate blank lines
  staging: rtl8723bs: Remove space before tabs
  staging: rtl8723bs: Fix style in definitions

 drivers/staging/rtl8723bs/hal/sdio_ops.c | 123 +++++++----------------
 1 file changed, 37 insertions(+), 86 deletions(-)

-- 
2.20.1


