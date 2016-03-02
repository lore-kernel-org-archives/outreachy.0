X-GM-THRID: 6255961671110492160
X-Received: by 10.31.9.78 with SMTP id 75mr22330929vkj.9.1456944576751;
        Wed, 02 Mar 2016 10:49:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.42 with SMTP id g39ls1933901qgd.50.gmail; Wed, 02 Mar
 2016 10:49:36 -0800 (PST)
X-Received: by 10.129.92.65 with SMTP id q62mr22264925ywb.19.1456944576110;
        Wed, 02 Mar 2016 10:49:36 -0800 (PST)
Return-Path: <bounce-md_30481620.56d735bf.v1-17ed1eb241e7477791d5b07b79f45db3@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id q187si2324781ywf.4.2016.03.02.10.49.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:49:36 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d735bf.v1-17ed1eb241e7477791d5b07b79f45db3@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d735bf.v1-17ed1eb241e7477791d5b07b79f45db3@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d735bf.v1-17ed1eb241e7477791d5b07b79f45db3@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=xyXWrcvSY0VkrfU9+ilJz0Pd2aM=;
 b=YR4JN2DuWrCQjMGrNvAKepEHWTTbUv5SKsHLYJbQrW1thhUXrtH1JUR2xD5LstYTmgYGJytbZnsy
   sg8VUQ2oGgpM73ZpKQQTYMNq2nD2b1e3VugtOACXxBs/rx8wu9GLW9h4o4bK3Ypl2Q0/hBFx5y6J
   LCwsiI72amRQRp07KmM=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=Q4ybVPoCn+XdXpyNSo/PGlpGaiEGo3WE66oP9e18stoYDC3pfb85+J3pkimq3On16jnVYoxM/BQd
   uioBeY/hNqqbXuWPRGJw0Rl5yeN34m2ZaR4QguBDKNXX9XhBnmGfwvWZe57qpLZt7Pj6pRM9BztJ
   AO7ym8EGcbczVXl5BjM=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqs0174nos for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:49:35 +0000 (envelope-from <bounce-md_30481620.56d735bf.v1-17ed1eb241e7477791d5b07b79f45db3@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944575; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=URzCHqVnBB7VFCf0Pbj/MWt1heFuN4r9PEYpRvPwKG4=; 
 b=TKUvDlawZIfnWrQ2qcySKzPR53nliPLQfN3KGwrdYlVu++f147XvAa6+iRNxnD/Xmpfljq
 IsUrZmqthMNa0tLCCjLjn0BCSh2Kqa+lnApS6oGjnXlReN5tIef8UPjonTxmUoLvmOUR33AP
 xw8EaLggfTAcMqBAugXMk9D3zcV08=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wilc1000: Fix warning usleep_range() shouldn't use min ==max args.
Return-Path: <bounce-md_30481620.56d735bf.v1-17ed1eb241e7477791d5b07b79f45db3@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 17ed1eb241e7477791d5b07b79f45db3; Wed, 02 Mar 2016 18:49:35 +0000
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302034141.GA2191@kroah.com>
References: <1456587353-29404-1-git-send-email-rakhish1994@gmail.com>
In-Reply-To: <1456587353-29404-1-git-send-email-rakhish1994@gmail.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.17ed1eb241e7477791d5b07b79f45db3
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:49:35 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sat, Feb 27, 2016 at 09:05:53PM +0530, Rakhi Sharma wrote:
> As usleep_range should not use min == max args.This patch fixes checkpatch
> warning: usleep_range should not use min == max args; see
> Documentation/timers/timers-howto.txt.
> Choose to increment max by 100, as done in commit here
> https://patches.linaro.org/patch/11284/.
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
> Changes in v2:
>    update in commit message.
> 
>  drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This patch doesn't apply to my tree :(

