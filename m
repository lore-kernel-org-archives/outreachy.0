X-GM-THRID: 6201947249365221376
X-Received: by 10.31.108.28 with SMTP id h28mr5325507vkc.4.1444301385205;
        Thu, 08 Oct 2015 03:49:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.7 with SMTP id d7ls501478iod.13.gmail; Thu, 08 Oct 2015
 03:49:44 -0700 (PDT)
X-Received: by 10.50.61.168 with SMTP id q8mr1428045igr.12.1444301384964;
        Thu, 08 Oct 2015 03:49:44 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si5335344pab.1.2015.10.08.03.49.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 03:49:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ve7so10950595pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 03:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=jx2tgO87KHVmzjiTKNda/85AU3eJP7mLXvS3KDVak2E=;
        b=WzjsWxjGV15ZTKDc4XIPSVAZzxHd5RbFJaHel4DEXplxS8oQh5wxuXVcxC+VWoGVlV
         Ljz+EEX47zxpgPDJNVova3dJr/USum8zi7gbWAGtkxepdWHnRBAult2iOSy3abTuX68d
         XoY4hAe9lfqL5JHcy0KOcxBB/yrJccGAhzuIi0EOpIEqBuq9ySu+tWlfriLQb8Tgznh5
         WV4Sugjdx5ekF0G6k0w4zGwVxMkTU2edze6dAWz1z6xnbXJ6icZJSzQpbpvjQ33S3VZm
         w9E/T/gfle0/NztzzzlnUlqHGZ7Kz+2BOxASLTkIvuQ4bp2o1hx+Ag6Uzc0NQhTjvQj0
         KKBQ==
X-Received: by 10.68.217.8 with SMTP id ou8mr7523947pbc.164.1444301384850;
        Thu, 08 Oct 2015 03:49:44 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fa14sm44956769pac.8.2015.10.08.03.49.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 03:49:43 -0700 (PDT)
Date: Thu, 8 Oct 2015 16:19:38 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Greg KH <gregkh@linuxfoundation.org>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/4] Staging: lustre: obdclass:
 lprocfs_status: Declare typedefs as static
In-Reply-To: <20151008091917.GA10872@kroah.com>
Message-ID: <alpine.DEB.2.11.1510081618540.4550@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com> <1444003359-6619-3-git-send-email-shraddha.6596@gmail.com> <20151008091917.GA10872@kroah.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.56164A46.02DA,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Thu, 8 Oct 2015, Greg KH wrote:

> On Mon, Oct 05, 2015 at 05:32:37AM +0530, Shraddha Barke wrote:
>> Declare typedefs  lustre_attr_show and lustre_attr_store as static
>> since they are used only in this particular file. Also remove them from
>> corresponding header files.
>
> "typedefs"?  I see no typedef changes here :(


Shoot, my bad :( I'll fix it up and resend.

Thanks,

Shraddha
>
>

