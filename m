X-GM-THRID: 6474577438501240832
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.28.131.208 with SMTP id f199mr910046wmd.11.1507481123856;
        Sun, 08 Oct 2017 09:45:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.162.137 with SMTP id s9ls598552wra.7.gmail; Sun, 08 Oct
 2017 09:45:22 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDLnFw6/IbhuegW4/obUdZo3nJtyBwonj42jcxMS7u1jNKTmcZ/o4stBf1lIo423R3erR0e
X-Received: by 10.28.142.2 with SMTP id q2mr899651wmd.32.1507481122823;
        Sun, 08 Oct 2017 09:45:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507481122; cv=none;
        d=google.com; s=arc-20160816;
        b=nrpntZzqVWMzd+ymPY3evkjAhyYRva7guYyUMe4HP5cAFHOeBNhF25M4W/ETT7hynu
         PIil68Dnm6tFu+KQEDwZYyU/mO2sKN/7pfscfBuUjbjXeHm/+lofzZBN1Jh8JUgo3M/d
         Wt++rY+CkoqRVBemSlDVSTBDgS1aZEdTe2nhIz8SZ0sernh3r/FY+ke48tEWsZyi1ZaU
         veidLTAq30ceUsWH/EnA56caWPr28ZfL1EKUUSfNMLzxK1I4K0bbSBJNihuMVqQRE08u
         1uEz6Wnm2ijYR3OO5aV51utI3M4G2Lo6xdQEt+wf5/JB8KB7Kokg1CW1pQEafU9W9tcV
         20uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=wgNdik8P/V1eUWT9LCMpX2/WyYrgb0yZzHCeztIGShg=;
        b=BiNX+we16RWvdkeXTLOrAx1Bizz8SMmnZJMcFKjUQnetrpBzyQlqrjHyC5zAlTHRkG
         +gL4WQJilsNxHIBSqunenzvuzGf+D0OibRyd7HyyabjpmmlkKWMz1gheh2bZC2BatXKU
         BmgQ87DutKkSrx8UMhVdnPo4GTR7qQpaPfR75zZEugRjGHuhD7JFoiwjfBgfvhYiDslp
         0HJLB6fplJoT/V+5/Mv3qA1aAASZxCXiAVN09WHryPrvFqhbkjYMtgN4/LNp09wj57TJ
         H6ZfDlGJFRtU9FyapMYIbNFarXGipbgSMY2+imrhEV9ZzGqa+Ttg3DQf/kXt/kZozm53
         QxMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si917745wmj.0.2017.10.08.09.45.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 09:45:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,496,1500933600"; 
   d="scan'208";a="295043086"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2017 18:45:22 +0200
Date: Sun, 8 Oct 2017 18:45:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: mamta shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Unable to find driver
In-Reply-To: <76c427fc-553b-447e-981b-b7be1b6ecd4d@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1710081843320.2037@hadrien>
References: <76c427fc-553b-447e-981b-b7be1b6ecd4d@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1153740882-1507481122=:2037"

--8323329-1153740882-1507481122=:2037
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 8 Oct 2017, mamta shukla wrote:

>
> I tried updating and writing patch for  fwserial drivers present in staging
> , available by firewire.
> After modifying recommended changes and warnings generated through
> checkpatch.pl.
> But after implementing the change, I am unable to find the corresponding
> driver in my kernel by following the path
> device drivers-> staging drivers for fwserial.
> Is that this driver is not available for patching or something is wrong with
> my kernel?

Your concern is how to compile the code?  An easy solution is usually just
to say make allyesconfig and then compile the driver.  You should check
afterwards to be sure that you get a .o file for the file you modified.
If you don't, write back.  Not seeing something in the configuration tool
means that you have selected something that conflicts with it.

julia
--8323329-1153740882-1507481122=:2037--

