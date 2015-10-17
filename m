X-GM-THRID: 6205668721559601152
X-Received: by 10.129.107.139 with SMTP id g133mr18580814ywc.38.1445106236466;
        Sat, 17 Oct 2015 11:23:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.52 with SMTP id t49ls1853975qge.1.gmail; Sat, 17 Oct
 2015 11:23:55 -0700 (PDT)
X-Received: by 10.140.196.76 with SMTP id r73mr18232503qha.3.1445106235871;
        Sat, 17 Oct 2015 11:23:55 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id wl2si2588472pab.1.2015.10.17.11.23.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 11:23:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fb7so7180510pad.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 11:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=content-type:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=UwyBD0gLFr6lFXIsJ+DF68kA62uvg/jLM1kn0uY0Okg=;
        b=dfQqUC/3PfoCjwEFrH0qm5VWEhhSm/mFlc3QYTV7NxpoGzrN1pVDnZVmmyfxrghTzG
         u/bXiqmpuh/5Jw4TBQKiIfbqXqAL0WSlC/64HlWbtsrHIoz4DLUSANYXjDgQRtoYhYf7
         gstxanP7doptN542lKzJFmVQh1BDol5nnkXhR9KCwkDwW4tJ+iXK9PZhlzapJRSNy48J
         MJ3lpEr9iqo4CmBwvTy6lp4POsM3NQrBAU5wqnlo2PlRSrgcn1kcOUe6Sh9cLEJ5LPgG
         OfACTFck3mJV5aBuff3+AmzZXy4/63H1v9KQlIArLxX+mmCWCEn4PLwnclHHUSD/zxe2
         ZGrg==
X-Received: by 10.66.194.138 with SMTP id hw10mr24620252pac.71.1445106235741;
        Sat, 17 Oct 2015 11:23:55 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from ?IPv6:2601:647:4700:de30:de3:6654:e7cb:47b7? ([2601:647:4700:de30:de3:6654:e7cb:47b7])
        by smtp.gmail.com with ESMTPSA id gj10sm27729595pbc.68.2015.10.17.11.23.55
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 17 Oct 2015 11:23:55 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
Subject: Re: [Y2038] [Outreachy kernel] Re: [PATCH] staging: ft1000: replace timeval with ktime_t
From: Deepa Dinamani <deepa.kernel@gmail.com>
X-Mailer: iPad Mail (13B137)
In-Reply-To: <14714669.cmuInrGK0Q@wuerfel>
Date: Sat, 17 Oct 2015 11:23:55 -0700
Cc: Greg KH <gregkh@linuxfoundation.org>, y2038@lists.linaro.org,
 outreachy-kernel@googlegroups.com
Content-Transfer-Encoding: 7bit
Message-Id: <4CDC6B9C-A188-4AFB-BCFB-FFC79FA74566@gmail.com>
References: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com> <929BCFA7-B28D-4B76-9006-A488345D945F@gmail.com> <20151017055511.GA30187@kroah.com> <14714669.cmuInrGK0Q@wuerfel>
To: Arnd Bergmann <arnd@arndb.de>



> On Oct 17, 2015, at 04:29, Arnd Bergmann <arnd@arndb.de> wrote:
> 
>> On Friday 16 October 2015 22:55:11 Greg KH wrote:
>>> On Fri, Oct 16, 2015 at 05:32:25PM -0700, Deepa Dinamani wrote:
>>> Should I then fix this patch as per your suggestion or let it be?
>> 
>> Let's just delete the driver from the tree.
> 
> Ok.
> 
> Deepa, can you send a patch to remove the driver with an explanation
> of why it's no longer used?

Sure. Will do.

-Deepa

