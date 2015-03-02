X-GM-THRID: 5994634543104
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,80407baedae78f34
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.126.47 with SMTP id mv15mr25668471obb.50.1425316768462;
        Mon, 02 Mar 2015 09:19:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.191.36 with SMTP id gv4ls652657obc.96.gmail; Mon, 02 Mar
 2015 09:19:28 -0800 (PST)
X-Received: by 10.182.148.164 with SMTP id tt4mr25730940obb.30.1425316768247;
        Mon, 02 Mar 2015 09:19:28 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x232.google.com (mail-qa0-x232.google.com. [2607:f8b0:400d:c00::232])
        by gmr-mx.google.com with ESMTPS id e5si1831958qcg.1.2015.03.02.09.19.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:19:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::232 as permitted sender) client-ip=2607:f8b0:400d:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::232 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x232.google.com with SMTP id f12so23954332qad.9
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 09:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=tE3NcJhkDxa4zof2+PXQ1PjivMtFKyjqWDmff48TnC8=;
        b=Lx/BwzMkdLRfyC5aMgsR+qTJEMMgl2xB2w3Glv8kTuKFZ7xRaAR6wvsr055Od4QNCF
         /PLE92D3AqQCd7gPiDwbSPkO/ruMDI7sNk2CcxnT/Yjjs+6Rp132wq2HVhOI3V+qe+8E
         cm564hPvOBZ161JyBwvCf+L36YZgp3l+b6LXxh5fR7zeeHkjDqSgWW7j7nsp9dZVF19S
         HcWHO3m+rY7azuF3hiEBxeHSui5LOYd7wa7sCeMjhljl1WoRv58/C2HWWi607mPijoas
         81Jpco9ejDnZAqKsQ040PxyF1nS+RYbwlEoHawxfoeK06TcJLCSGoeCQnRWCXkNFrhhY
         h/0A==
X-Received: by 10.140.202.213 with SMTP id x204mr53234187qha.95.1425316768160;
        Mon, 02 Mar 2015 09:19:28 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id z143sm2145917qhd.40.2015.03.02.09.19.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:19:27 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54F49B9E.7020700@gmail.com>
Date: Mon, 02 Mar 2015 12:19:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieeee80211: Add
 sapace before '{' and after '}'
References: <1425316465-16949-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1425316465-16949-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 03/02/15 12:14, Hatice ERTÜRK wrote:
> Space required before the open brace '{' and after the close brace '}'
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 184 ++++++++++-----------
>  1 file changed, 92 insertions(+), 92 deletions(-)
> 

This one looks good

Jes



