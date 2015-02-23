X-GM-THRID: 2698279649280
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a6cf1b5024c222ad
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.7 with SMTP id n7mr1107808wix.0.1424683780429;
        Mon, 23 Feb 2015 01:29:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.97.105 with SMTP id dz9ls511685wib.4.gmail; Mon, 23 Feb
 2015 01:29:40 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr1143710wjb.6.1424683780111;
        Mon, 23 Feb 2015 01:29:40 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id by11si857134wib.1.2015.02.23.01.29.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:29:40 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-we0-x236.google.com with SMTP id w62so16646761wes.12
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=fID3EZM6rVxT6kFdqvLKGi42Q2UpLIaK6PX3XYHp9rI=;
        b=nWv+wUdHH4nYM3/vrnPC+vjHfkLDTB50sKgiP7DIUv+YKf6AVPl9cZE0zjmN7kxEZP
         thEYERhUG0/tX9ocouRQagnINyNFeSFE7BIgsqs3fYKaTI2q6QLall/k6RG416nislIs
         +gI9sSDqewMQcrgZH50fK16E25/M6vf4qtrUqDw/DBTNdGAiuQXnUdPg1U2OJhzR48Pn
         lvm3zlZhOk/hjLRwSwlDaP9VKe3wipEO6/zOB4cMAu82DJlvHTj1cyTHxn5viGvcAszd
         cNvf4NJnzVdutFDGL/bn33Rp5/qYqZ9fJ96GnRXazogIqLsDI1AofyFAHFxxXdS5/XMZ
         wUTw==
MIME-Version: 1.0
X-Received: by 10.180.103.102 with SMTP id fv6mr18252237wib.80.1424683780035;
 Mon, 23 Feb 2015 01:29:40 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.216.178.66 with HTTP; Mon, 23 Feb 2015 01:29:39 -0800 (PST)
In-Reply-To: <20150223091613.GA4359@gmail.com>
References: <20150223091613.GA4359@gmail.com>
Date: Mon, 23 Feb 2015 11:29:39 +0200
X-Google-Sender-Auth: qiGwMb-h5AjoIricW3maFvNchbw
Message-ID: <CAEnQRZBevBPsNHoewcJfkx9SUjG=9otF7QOz1A-Rtt=EfErPxQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unnecessary variable
From: Daniel Baluta <daniel.baluta@intel.com>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 23, 2015 at 11:16 AM, Vatika Harlalka
<vatikaharlalka@gmail.com> wrote:
> Remove unnecessary variable and replace its uses with previously
> defined variable.

Hi Vatika,

A good commit message should always try to explain why the change is needed.
In this case you could say:

We only need the last 8 bits from offset, so we can directly operate
on offset variable
instead of introducing unneeded newoffset.

Other than that the code looks good to me.

Thanks,
Daniel.

