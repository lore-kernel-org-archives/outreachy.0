X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.160.176 with SMTP id xl16mr1457217wib.6.1425197807751;
        Sun, 01 Mar 2015 00:16:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.198.198 with SMTP id je6ls334062wic.54.gmail; Sun, 01 Mar
 2015 00:16:47 -0800 (PST)
X-Received: by 10.180.13.195 with SMTP id j3mr1455887wic.2.1425197807473;
        Sun, 01 Mar 2015 00:16:47 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id i7si433240wif.0.2015.03.01.00.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 00:16:47 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by wiwl15 with SMTP id l15so8462451wiw.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 00:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=Mf66RxdCk53kfvtfnsCV9lbtcM2ezpFmvx9NwBMdB9M=;
        b=pwnRk+x80etSMes6HM00bY0qdqS2j84LQGGbsabGb2QZcyCuTprbvj7WvDE2vg+OCf
         qHTooAjATo7CnTEYZR5V13IX8miSBH2PXVZCyZnddTR/pbZajHxTxg2yBQpj2i6DzmBw
         chPD6pLhoXeX74tn1ciNiEBa5aMB+z9QiFsdDW4BpQkpIF/rhU04KNWEhLYP7qJOF3N1
         GlEgWLyc6cVo9Sn8xf4fxN5VXoehHQ1A4qdud4fjoNvKAltbpLYeiqijmm9gPWyu6GD5
         AyKMz5Akgr/2KTz/z2cX6uMBxeYzVek6tr3aWROSGy1ZSawwfesFQW/fnnAvdeaEYSDj
         Boow==
MIME-Version: 1.0
X-Received: by 10.181.27.199 with SMTP id ji7mr23272658wid.76.1425197807398;
 Sun, 01 Mar 2015 00:16:47 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.28.3.68 with HTTP; Sun, 1 Mar 2015 00:16:47 -0800 (PST)
In-Reply-To: <1425065015-22870-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425065015-22870-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Date: Sun, 1 Mar 2015 10:16:47 +0200
X-Google-Sender-Auth: z4zl3crMB1-fBQWjVgChFQKWcMQ
Message-ID: <CAEnQRZDeNxfPbAs9U+MzgBBN7UyGLT_MFpxL_tmGBrRdQAcKWA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Add blank line after declarations
From: Daniel Baluta <daniel.baluta@intel.com>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 27, 2015 at 9:23 PM, Melike Yurtoglu
<aysemelikeyurtoglu@gmail.com> wrote:
> WARNING: "Missing a blank line after declarations"
> Add blank line after declarations. That was found by running checkpatch
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

