X-GM-THRID: 6885367021918224384
X-Received: by 2002:a05:6602:148a:: with SMTP id a10mr189884iow.76.1603124435355;
        Mon, 19 Oct 2020 09:20:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:5b47:: with SMTP id p68ls125186ilb.5.gmail; Mon, 19 Oct
 2020 09:20:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRrxYZrwNO6Rjl83VVIF/8wZQQDZFYwOG2+WyXBDdnBvdmuEl7tdTflP0zASurJ6wep1dk
X-Received: by 2002:a92:b712:: with SMTP id k18mr589987ili.291.1603124433897;
        Mon, 19 Oct 2020 09:20:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603124433; cv=none;
        d=google.com; s=arc-20160816;
        b=qWweMYXPtZNoqAZCb3yLKNQrPxnNrWu7apd8jnT0Z+Hrn1KsGSIWoq9I6YD3QBTVMg
         gU1sL8VWuVciVopbos8no6oAYCN2sZbuMc+9y2cUpdsHh7B8inVV1QcYPddOvz0d+ZZE
         T2SfpIyPkYZ1OmK0LfkO+KtEzM3rKElzMKBj7OwPpaZYybjDBw35KTiyu7rbyDMvZkak
         ue38anRMoCbH6QxC4rP94r958lCMTRxc8HhOHADKMtZT6wY4mdXaz11R9/nSF1bcJx0L
         OKDopLyPpo28lFqtyNzXA4rp98vcKRuCYMT4PQhM68bie06/HuOXlsNOOm7ikHxLhsQL
         z6SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=w4uMij9CTvrGIx+NRO71amGqgWLT5y/95zkd1EdWHXM=;
        b=JbNAVZsNpOk+TklJ+oXPCxb5zOKu42kfmNSMgxgUb71AmCeVFZDYU2lxpZvoo81g44
         ji5anF4onYnIFXJPIy1Hqw+tB0cbmP+qzLmLdLVh3zdVr4p/5DJiL/+Jw7sUmXtXIRY9
         m1YsQz9uQhoO0q2ocqz9+2oJ9nugmXETji47hx/gN6iTDOdMH4Z0g8s22vkYs5IH9S8J
         eLALvDRttnqI8mdcXvwMObHgcbXRFbHo6Yp0FnLajOcNRHlSM/XpE2teUx7/27A6Lvs+
         cMmawMFO5l4nQynVNztku5F1h4tlVXu/k0v3X7CdnXml3c7ZlPvaEdJLXoNtASvavUN4
         q6rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JiTpI78M;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id i18si54353ils.5.2020.10.19.09.20.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 09:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JiTpI78M;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id p11so16175pld.5
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2020 09:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=w4uMij9CTvrGIx+NRO71amGqgWLT5y/95zkd1EdWHXM=;
        b=JiTpI78MvujZmeINGD01jnEs8Qtq+UjjXihOk9C17vUBv/VMLWqJ9gQAuu6kkXNWNc
         vOAdoVODoI/9SAXQ7qlkT20a4XhnEiKYqb5S8t+Nh2gpXuqf/769KHBB9RbXdyzEzc6v
         5vRXbj5W8L8G4zkPtznUFRLcNeBGRCGeWBUSBzk4m0w7Q9hcbxtk6UvlkqJAlIuD5Ptd
         Wpy4Lbk+P0bCdUDjiREBcWasS7NFDsHmmu5E4FS8u4+k2rIAlwFqYDPuPLfP7ZcWu6S2
         3It6L46Dk3smoLPEIJOPQllXMGmsVuJhzTKxD+lErqN0z4pi9t4t0a7g5nilLFfrm10a
         sMkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=w4uMij9CTvrGIx+NRO71amGqgWLT5y/95zkd1EdWHXM=;
        b=AfZCwNnWftkM4PO8p6hFGlowfOpmB4A1ejI4llmkuRaeuIU6BFuI4pIQxxIh1vcU2n
         bbqo7+DBNxOk4sVHnrqlpxKld4MhUF1kG+l1sdGxeL2fq9UzIk+Se/vk/steElENq/2p
         RFPM4aCsTDsONeWQyzjMTqYb4mSFJxECkfrnrO/Q7bAgA1q1NoAz2h6RVG7Hb1ph2DJu
         O9myGa4UsvQscQpgXE5xPPJyRxjafC8/OpEtzV0Vg0aqIT/31fL3IvlFI2PYkJetrErm
         geaxiEvATUfmtbwMJhHqqXVfsnXCpaGhc4HJQBqCAHJikjs943x7K7e/kXMXdiVw1sh6
         BpSg==
X-Gm-Message-State: AOAM533ne45V9Nq4gZaQTg/DnC+q2xfv7hP3FvXmIoa97hqKTGdL5M1t
	iE+4BPqXWMWa448Ns9tt2OUZwbHctMTkJg==
X-Received: by 2002:a17:90b:23c5:: with SMTP id md5mr165172pjb.182.1603124433303;
        Mon, 19 Oct 2020 09:20:33 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id 70sm289730pfu.203.2020.10.19.09.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 09:20:33 -0700 (PDT)
Date: Mon, 19 Oct 2020 21:50:28 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: Need help building a driver: mt7621-pci
Message-ID: <20201019162028.GA68635@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
I have made a change to drivers/staging/mt7621-pci/pci-mt7621.c file and
now trying to build to ensure the driver builds fine. However, this file
doesn't get included in the build process.

I tried looking for driver dependencies and am not able to locate RALINK
in my driver tree [in menuconfig] to enable it.

Can you please suggest what may be wrong here?

Thank you,
Deepak.

