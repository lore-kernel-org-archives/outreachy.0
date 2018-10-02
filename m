X-GM-THRID: 6607095314902941696
X-Received: by 2002:aca:cf87:: with SMTP id f129-v6mr13859929oig.36.1538510717179;
        Tue, 02 Oct 2018 13:05:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6416:: with SMTP id h22-v6ls6351433otl.9.gmail; Tue, 02
 Oct 2018 13:05:16 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62iSG2PinSt5Ag7b+jYRrtsOxakmE5Sn7zo7/Nbh61IEvey/HGCvfMoouphvBuQDFjp12dQ
X-Received: by 2002:a9d:11f8:: with SMTP id y53mr7389860oty.58.1538510716500;
        Tue, 02 Oct 2018 13:05:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538510716; cv=none;
        d=google.com; s=arc-20160816;
        b=xw8YFI6HA5H5okf/ClObr7DXWHFztXfSJcl4812DzdO6EkIGo/M3zY4NDY8NtUA2ap
         kLfI8ucKlBJmnj1L7CbbzbYdcnSgIZIbcnFBSPRVcM+PlJ/uBt5OuSPKVQ++iNGrHmGK
         Ghh3zUSiK9ORO2z5716qix141L1pes+JQ2qiRxXFqQxfQL3e8DoF4G5mx5yq+ScyUbje
         wTX4TwIA+1qKoiD9zt0GWnvCfPlNcaZek3+iwT9R+djgjoownlO8vU42N5B4NGVp8pfv
         or0Jv6fooBMGeAoD8TuByB1iRsJQ8SQRboQnmqFua61MlI4jRTF6hEdsfBZIpg1GyWKE
         Cv0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=iqfTNWtVzVEykYeLL7N+hldbf7uF7sLhBzYvnUyAnyE=;
        b=Tn18m0mQMIoczxSpVzPGZzR8TQATjVKFi9u19cOJ3Lbz5LwDfU4Ntu9M6PLBg6kAn2
         2G5YD/66Ebza5YGZboosSZAQ3YdnAcIep5LJ/ihlV28rXg+CLekmk/t738LVjM9L2aV4
         Ftp0A9v5EtxzXamNO/cYm7+Y+SZb/yGukSPf2SdoS/hcDuwKXDPJeC0vnB5+597dFjLP
         5GeA93f5Fv2dnHfMktt935SG82Wrk8zXPxpoGQN3R/tJWDDWf4mrLrHu9m6sC8nHEjtF
         3b05d5bfx6PYr63/sYphM0JukRsso4YWRYMmL7wj9PYB8pA9vtd72M6iIuNAXoQj5b2z
         vCBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Et6M1Cq7;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id w8-v6si824551otg.3.2018.10.02.13.05.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 13:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Et6M1Cq7;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id s4-v6so2265930plp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Oct 2018 13:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=iqfTNWtVzVEykYeLL7N+hldbf7uF7sLhBzYvnUyAnyE=;
        b=Et6M1Cq7cHpXnNvBpK6S7osenzf6+c5Fe8M+LfMSQNlUdZ/RKJwjQ9ATCwPRhiINMR
         XmT9oyAXkxFPqYmlkLcqrpHfTvYgqZqPN2LqKvY+FwO3EccKhZpMub3rlDFZMXq2tKx1
         biHJSehI0YOvr7NsNNuagVv1oSZ2p2mLhhV6fSuGfeEGWzk5rfP2c5xmSj7NSxkoRlxK
         I8b5qz/NuB/EkSOKYzArURvT/0cgOnblH9Fh39QQT0mWqaAaKHEBIJDOtHtX7iKsMxpg
         iazOoOEDUqUkT/HmD6hFWMNrGhBkMTCygWL8p+NcydDniNK5Mc7e1V+v7iPsWZ2oxwyf
         TsUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=iqfTNWtVzVEykYeLL7N+hldbf7uF7sLhBzYvnUyAnyE=;
        b=Pe6wmTE64xkecm/HSxh0bmiL91pGanrGFfMIYuPmMBrr5ue4ADDbbBhOTYwOboBiUw
         hXF4sLuWH0C8V915K21eW1M3jwsCpo3cxCQaspwpAVjdbfNXlR+VUyNaCi4Fbh5TrdtE
         T1q2s//NfxiBzUaV1J8Ob79pnA8A+uGJURY0bYJRBLoorsl5ddu8bR2YdQmk0KSroNp1
         VCFJjMJ4W6IXx+IF640WIi+dvoV5DggO0WkMLLJ8mggrVqPDSZ+e3mWBIxGfLNMJbsX6
         nzpL+v70ZFk6Lmpo2A7pMuTJRAzZZl57fjIXTMcmyzj1fZPRwVOsHl9dN22oRn5Ka5/F
         8hXg==
X-Gm-Message-State: ABuFfoiNWXHIWrjVfP2p5Zv75XdMF+SX0I5Rh///mNgJ+qhg9o9TtAH1
	puw2FIPF5PLYG15TYO3rnSeOin3H
X-Received: by 2002:a17:902:3a5:: with SMTP id d34-v6mr18264752pld.98.1538510715629;
        Tue, 02 Oct 2018 13:05:15 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id a19-v6sm29604306pfj.38.2018.10.02.13.05.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 02 Oct 2018 13:05:14 -0700 (PDT)
Date: Wed, 3 Oct 2018 01:35:07 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, hdegoede@redhat.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
Message-ID: <20181002200507.GA26645@himanshu-Vostro-3559>
References: <cover.1538333858.git.dafna3@gmail.com>
 <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
 <alpine.DEB.2.21.1809302217480.2863@hadrien>
 <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien>
 <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com>
 <20181002092816.GA7179@himanshu-Vostro-3559>
 <CAJ1myNQrZqex6nFfq9Uh1qYK94PVOE_mxUZf7wK0chDXtP74iQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJ1myNQrZqex6nFfq9Uh1qYK94PVOE_mxUZf7wK0chDXtP74iQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

> > Hi, I choose the CONFIG_PCI option, it did solve the undefined symbols,
> but the file still does not compile starting with the error:
> 
> drivers/staging/mt7621-pci/pci-mt7621.c:496:27: error: ‘port’ undeclared
> (first use in this function); did you mean ‘ror8’?
>   list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
> 
> I saw that in other usages of list_for_each_entry_safe, the first parameter
> is a local variable.

Correct! Both port & tmp should be a local variable of the same object
type.

> > > Then in run "make menuconfig" again and under "Device Drivers -> staging
> > > drivers" I chose "MediaTek MT7621 PCI Controller"
> > > Hoping it will solve it , but it didn't.
> > >
> > > The files I prepared the patchset for did compile ok , is it important
> > that
> > > all files will compile?
> >
> > I think for these changes just use that .config supplied by the distro
> > at /boot/config-*
> >
> > But IIRC `make allyesconfig` should be used(not sure though..)
> >
> 
> But I compile on ubuntu on x86 and I want to compile to a specific mips SoC.
> I tried it anyway and it did not compile the file  I prepared the patch for
> (drivers/staging/mt7621-mmc/sd.c)

Cool! 
You found a bug while cross-compiling for MIPS which would not
show up on x86.

Btw, the Cc list should contain developers who might give you
a better feedback. Therefore, use `get_maintainer` to list all
those people.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

