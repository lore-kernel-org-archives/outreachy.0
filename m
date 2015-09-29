X-GM-THRID: 6199955857120165888
X-Received: by 10.182.142.4 with SMTP id rs4mr1073728obb.2.1443544113013;
        Tue, 29 Sep 2015 09:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.195 with SMTP id f186ls1414350ioe.107.gmail; Tue, 29
 Sep 2015 09:28:32 -0700 (PDT)
X-Received: by 10.107.9.212 with SMTP id 81mr24055581ioj.19.1443544112013;
        Tue, 29 Sep 2015 09:28:32 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id q133si2546468ywb.1.2015.09.29.09.28.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 09:28:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x236.google.com with SMTP id z77so10827598qge.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 09:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ZSF7NPJoog4GiT+MOrlJAcvqwlZVPI3XemVUZKqpNmg=;
        b=EHgNAexdagAt7467ZO96RGE16b9ck1tMe06cWiv1Ru0cTSHy/C/Vhd4s4Y1LKQ1ztN
         xOvqFCmIM7nJmWXVNfXurJtUCVRzJEZ5ytPLI5Kz+Zjvva0QIWCr1k2ugqFkwLZKziSG
         DnN7fJqk6JbTOC81aygXzdEMq4yb1085GC0bTHRlfRTOOoJUSn7azqLEw46dxKvjK6c5
         TEKwoQj8eArL45QOhueTO7FQG+mkuN1aVw4jL6NmAViRjImIVLK6XzJ0UXj3gsvtAMM/
         xmu8yaJTlaaPlvYEZjdzAOFGFIBu4T5snqXnYKZFrEByPEnJdfAkBvX28k/3dNLTkkEc
         V2Kg==
MIME-Version: 1.0
X-Received: by 10.140.164.141 with SMTP id k135mr32031369qhk.40.1443544111847;
 Tue, 29 Sep 2015 09:28:31 -0700 (PDT)
Received: by 10.55.15.42 with HTTP; Tue, 29 Sep 2015 09:28:31 -0700 (PDT)
In-Reply-To: <20150929161746.GA23714@sudip-pc>
References: <1443539701-2833-1-git-send-email-ksenija.stanojevic@gmail.com>
	<20150929161746.GA23714@sudip-pc>
Date: Tue, 29 Sep 2015 18:28:31 +0200
Message-ID: <CAL7P5j+9c5ovuju2Bq+qD4Dk55u5myD340RFKvnZwdDCkiKzqA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Remove typedef
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 29, 2015 at 6:18 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Tue, Sep 29, 2015 at 05:15:01PM +0200, Ksenija Stanojevic wrote:
>> WILC_Time is not used and also time_t is not y2038 safe, therefore remove it.
>> Also remove comment refering to it.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
> This has already been done by 62f463a89242 ("staging: wilc1000: remove WILC_TIME typedef").
> Please base your patches on staging tree.

Thanks for letting me know I've done this patch yesterday and rebased
my repository then.
I'll it do it again.

Ksenija

> regards
> sudip

