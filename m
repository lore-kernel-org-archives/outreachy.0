X-GM-THRID: 6249584519546929152
X-Received: by 10.129.109.197 with SMTP id i188mr35274519ywc.8.1455095535535;
        Wed, 10 Feb 2016 01:12:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.198.67 with SMTP id w64ls157932iof.61.gmail; Wed, 10 Feb
 2016 01:12:15 -0800 (PST)
X-Received: by 10.107.14.141 with SMTP id 135mr39167998ioo.22.1455095535245;
        Wed, 10 Feb 2016 01:12:15 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x241.google.com (mail-qg0-x241.google.com. [2607:f8b0:400d:c04::241])
        by gmr-mx.google.com with ESMTPS id w126si132275ywe.6.2016.02.10.01.12.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:12:15 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::241 as permitted sender) client-ip=2607:f8b0:400d:c04::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x241.google.com with SMTP id 14so886123qgg.3
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 01:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=t31qsTNYhg30glTnzsGAEIDQLiA41VduJ2lOGGgzPqQ=;
        b=BmIXd4fx6HxqnveD3n54so12sXPqp8Gu2BIMe1lL2QClaO+Se8ST4XPCxhdd/V6J5l
         yD+2hAX1tEUT3Bax40QQqc4sZky2/fi2H0keIpHLIZVaunXLVPlckK+QrP/cgHugiXDa
         LhZa1zGrs2OmcCvBQ+Jiis37Oktmv6pYju1KUfbzqpIb0B7FD1XXcX05gkhzChKeuqNv
         fGhBSzg67W7yr4Yp3T2ZUZBFv32ngzcq1Wc7REBtfPQvfs7jRT8n6Q8QlK0K4aG9sO49
         xoZP6F8suaCEPjetbPyx3X2CpYAqc0C26eFalewyRdhAVh+Hzuv989GiGYjgvllHFTBx
         gttw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=t31qsTNYhg30glTnzsGAEIDQLiA41VduJ2lOGGgzPqQ=;
        b=EcrIduJLGmCnybgDdWbwTSM3nDyeugj3YyGire30yntBPybtWvaDQxOe/w0P41PNSu
         3EVSopnkuY8TdyEIPNVE8djGyK5FbHJ366PdGHrVRoFXlRGgdwhL+Y4ksod9yPtpV0dm
         7NJjoTEs2d0M87ns5j9i1oVku0mEBjm7EnVWZxrhV4mK+IhhaYeR1FHrwv2rC/y26wRW
         FVsZn2Bnz2//95FAwMtcZyGuxXj6EfA0NFpmn56f6djCwwKb9+KKNpBUU5o3gwkr0c3v
         Mwge5W3SuVkK49cCxbs1OIgUsAvZHahIaKupIa3zLIhpt7x+2C0+wVhFr2R0xqaU7sm3
         dyBw==
X-Gm-Message-State: AG10YOTlbqcOzjg744e457Wgr7bfh2rdph2b0RnLYnrH+j1p0u6RO8zKa4ICMXD9qQQRr7KJTM4u/ljdOjNNmg==
MIME-Version: 1.0
X-Received: by 10.140.233.85 with SMTP id e82mr47520874qhc.86.1455095535024;
 Wed, 10 Feb 2016 01:12:15 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 10 Feb 2016 01:12:14 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602101004060.2954@hadrien>
References: <20160210085942.GA14651@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602101004060.2954@hadrien>
Date: Wed, 10 Feb 2016 14:42:14 +0530
Message-ID: <CA+5yK5F1nNgDLCJrFm3CrgOjCe3OJUutMrQ5+2R_FOrz3g0wzQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: comedi: drivers: pcmuio:
 Merge if conditions
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 10, 2016 at 2:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> -     if (!chip->active)
>> -             goto done;
>> -
>> -     if (!(triggered & chip->enabled_mask))
>> +     if (!(chip->active && (triggered & chip->enabled_mask)))
>
> I=C2=B4m not sure that converting to only one ! in this way is a good ide=
a.
> !X || !Y could be more readable.  Here there are a lot of parentheses to
> sort out.
>
> julia
>

I wasn't very sure about this either whether I should make it !(X &&
Y) or !X || !Y.
Since Patch 5/6 also does a similar thing, would you like me to change
to !X || !Y for both?

Amitoj

