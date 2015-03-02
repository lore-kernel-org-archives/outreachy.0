X-GM-THRID: 5870259798016
X-Received: by 10.52.88.67 with SMTP id be3mr27229101vdb.3.1425317177821;
        Mon, 02 Mar 2015 09:26:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.74 with SMTP id a68ls1755879qga.76.gmail; Mon, 02 Mar
 2015 09:26:17 -0800 (PST)
X-Received: by 10.236.42.228 with SMTP id j64mr27175348yhb.36.1425317177650;
        Mon, 02 Mar 2015 09:26:17 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x232.google.com (mail-qc0-x232.google.com. [2607:f8b0:400d:c01::232])
        by gmr-mx.google.com with ESMTPS id kt5si1830852qcb.3.2015.03.02.09.26.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:26:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::232 as permitted sender) client-ip=2607:f8b0:400d:c01::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::232 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x232.google.com with SMTP id m20so25735857qcx.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 09:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=ys/CxWeRRmXTjIzRkMkccRqMrgJ8Cx86xZ6tW4vvWss=;
        b=dOvhEIO+ebFf8hxKR1SBXQk7H09r/Hr5JZXu5VDSVfxAKwEBgst0Evcn3Kk5xxB4Mg
         9x4vuzaRTKbIwQohCBQDD7qQsOKnQpeZCDGZpF4pHejuHx2M6GRrGaBqP4XCtuPiWAP9
         f/e2RKSSz8Oags0vi/I+4RNwBbP/DAgx1CBWqL1IWRWIFV6uKxTpKMhinRJimNzht1yH
         iM2ptyj5LMWz6aMpgAHu5gZDOq0gaVMfCQnt+jo/jF+mCk3VyNTTgs8Jbem6ZFuVXyyG
         Y9pdeoP7Wur4FKuue2KzbbZMuO8sm2OE74v18WwQsTbhLqKjEBZg2o8SipmCzNKNqEko
         3IOA==
X-Received: by 10.55.26.208 with SMTP id l77mr7186413qkh.62.1425317177563;
        Mon, 02 Mar 2015 09:26:17 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id d186sm8767688qhc.3.2015.03.02.09.26.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:26:16 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54F49D38.5080606@gmail.com>
Date: Mon, 02 Mar 2015 12:26:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Sarah Khan <sarahjmi07@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Problem in updating Kernel
References: <CALx5q7d_uzDS0e5-cYWBaBN-v5fddg2w35RxAbX46eUUVfBQPw@mail.gmail.com>
In-Reply-To: <CALx5q7d_uzDS0e5-cYWBaBN-v5fddg2w35RxAbX46eUUVfBQPw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/02/15 02:21, Sarah Khan wrote:
> Hi
> Whenever I am trying to update my repository using: git fetch origin
> I am getting following error
> fatal: unable to connect to git.kernel.org:
> git.kernel.org[0: 198.145.20.140]: errno=Connection refused
> git.kernel.org[1: 149.20.4.72]: errno=Connection refused
> git.kernel.org[2: 199.204.44.194]: errno=Connection refused
> git.kernel.org[3: 2620:3:c000:a:0:1991:8:25]: errno=Network is unreachable
> git.kernel.org[4: 2001:4f8:1:10:0:1991:8:25]: errno=Network is unreachable
> 
> And also when I am using chatzilla to connect to IRC channel I am getting
> refused again and again.
> 
> 
> Thanks
> Sarah
> 

Try again - it looks like a network connection problem at your end. Is
your Internet provider blocking certain ports?

Cheers,
Jes


