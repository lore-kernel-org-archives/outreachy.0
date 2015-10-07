X-GM-THRID: 6200896862154653696
X-Received: by 10.194.156.193 with SMTP id wg1mr7027026wjb.3.1444178852193;
        Tue, 06 Oct 2015 17:47:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.136 with SMTP id g130ls7953lfe.73.gmail; Tue, 06 Oct
 2015 17:47:31 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr6972539lbc.14.1444178851441;
        Tue, 06 Oct 2015 17:47:31 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id c7si3951wiy.3.2015.10.06.17.47.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 17:47:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id lk2so5944884wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 17:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=o4oSL4q8s6dSkHnEiLXLBIzx689PP8Gf+YaPHdyeFD4=;
        b=Z0cE59mNV4rqiOcOR1MSi/s0/wXeJ8iVey3XhWC5D5N5lzdGtaDbHBW4IeCcK0NTnH
         R9fd73ox/F6Tv1mK+qca4T4d8v6tPWESjNLa4KhqhNNuIO3YGHGKRy0L7ffFUFzfYQpw
         IW9VT2XOe8AFLRE+cDmXbgsa+fGt66zPl89eavPbCIT/udXBU0UiVwMfc984CnL5mUP9
         2AtQnsff60Yc9BHi84XrWOnsdF/cLKQYy/xW8qHXH7HtjCEsKWW4x0Y+YSr8vYeZLpgf
         a6oHNc/X+iPQuY4zmP1bxzNo7VQQlDyJSEskhn4v6EXAiCyhYfgKGkT7J6SNYyPhFQIo
         WZHQ==
MIME-Version: 1.0
X-Received: by 10.180.87.74 with SMTP id v10mr18822367wiz.66.1444178851338;
 Tue, 06 Oct 2015 17:47:31 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 6 Oct 2015 17:47:31 -0700 (PDT)
In-Reply-To: <20151006050922.GF4745@sudip-pc>
References: <alpine.DEB.2.10.1510020959500.2633@hadrien>
	<83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
	<20151002102819.GD9346@sudip-pc>
	<775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com>
	<20151002125909.GB32540@sudip-pc>
	<71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com>
	<alpine.DEB.2.10.1510041457450.2661@hadrien>
	<20151006040800.GA30304@ubuntu>
	<c6724038-bdcb-4813-b49b-22b9d8f5af2b@googlegroups.com>
	<alpine.DEB.2.10.1510060558150.3038@hadrien>
	<20151006050922.GF4745@sudip-pc>
Date: Wed, 7 Oct 2015 06:17:31 +0530
Message-ID: <CAKHNQQGXAG+uf_C2wo3qvdjN7Tx0tNenGZpQMoVOG=n-=tcMwQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 6, 2015 at 10:39 AM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Tue, Oct 06, 2015 at 06:00:23AM +0100, Julia Lawall wrote:
>> On Mon, 5 Oct 2015, Shivani Bhardwaj wrote:
>
> Thank you, Sudeep! :)
>
>>
>> >
>> > Done. Seems like those folders didn't have much to compile, only one file whose dependencies were compiled.
>>
>> Before you send a patch, at least check that you have a .o file or the .c
>> file that is affected by your patch.  You can also compile by saying make
>> path/to/file.o.  The only risk with that method is that it won't find
>> missing dependencies between files, if you eg change a function name in
>> one place but not everywhere that it is used.  But changes inside
>> functions often don't relate to that.  And with make path/to/file.o you
>> will see immediately if it is able to compile your file.
>
> Usually I will compile the whole folder. Suppose I change something in
> unisys and I want to check it, I will do:
> make clean M=drivers/staging/unisys
> make M=drivers/staging/unisys
>
> regards
> sudip

