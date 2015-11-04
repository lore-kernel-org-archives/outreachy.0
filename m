X-GM-THRID: 6211892414504763392
X-Received: by 10.50.129.103 with SMTP id nv7mr1266782igb.3.1446624534372;
        Wed, 04 Nov 2015 00:08:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.228 with SMTP id 91ls637147qgl.15.gmail; Wed, 04 Nov
 2015 00:08:53 -0800 (PST)
X-Received: by 10.140.226.78 with SMTP id w75mr141273qhb.9.1446624533867;
        Wed, 04 Nov 2015 00:08:53 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si10432pac.2.2015.11.04.00.08.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 00:08:53 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hx2so37964576pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Nov 2015 00:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=GFRbBJmc18K36z/uj+IXij6NYz9cJdB09Eyvov7mBsw=;
        b=qw/uwGlxHjOxfX6JAHEnenSw/eDKpKjJOb1zE/HzneWUg/70I+mtPnF7JpvztprHgU
         5Qv+z1CY2luCJB7eudcFCzAqa7LF8zWT21KGMQv9pQVN0o8xtJJEUHyWKMpLR3kPu/aS
         Z960xvS+yD5Qw+sO/x6ZQqYFkJ1u1qeN7WmLsr7GWbchQtbYvHTlDVrfTjeAJcrI7d7V
         a15mx7Fxq4fG7T0oWOlGCaKF/yXRw4SNMCWFN8SlhEmNew8UmUZ/Ql75U+9Z/zu8jFI4
         P0gOSMLXynJ+OD8Fbc/hBEP/Bzpuwijf3Ptz/RQcyFAkh37M3K+jFJu/mN5Ck6pJakDU
         GHaA==
X-Received: by 10.66.62.131 with SMTP id y3mr227264par.104.1446624533682;
        Wed, 04 Nov 2015 00:08:53 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.4.9.105] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id po4sm306982pbb.64.2015.11.04.00.08.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 00:08:53 -0800 (PST)
Date: Wed, 4 Nov 2015 13:38:43 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Greg KH <gregkh@linuxfoundation.org>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: lustre: lnet: Remove
 typedef cfs_workitem_t
In-Reply-To: <20151104034349.GA5244@kroah.com>
Message-ID: <alpine.DEB.2.11.1511041337270.8650@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1446360698-9942-1-git-send-email-shraddha.6596@gmail.com> <1446360698-9942-3-git-send-email-shraddha.6596@gmail.com> <20151104034349.GA5244@kroah.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



On Tue, 3 Nov 2015, Greg KH wrote:

> On Sun, Nov 01, 2015 at 12:21:38PM +0530, Shraddha Barke wrote:
>> The Linux kernel coding style guidelines suggest not using typedefs
>> for structure types. This patch gets rid of the typedef for
>> cfs_workitem_t.
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>> Changes in v2-
>>  Fix alignment.
>
> Due to other changes from other developers, this patch doesn't apply
> anymore :(

Alright. I'll resend it based on latest staging-testing tree on the lustre 
and drivers mailing lists

Shraddha 
>

