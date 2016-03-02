X-GM-THRID: 6256254448614506496
X-Received: by 10.31.165.1 with SMTP id o1mr22309790vke.12.1456944533792;
        Wed, 02 Mar 2016 10:48:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.80 with SMTP id a74ls889130qge.72.gmail; Wed, 02 Mar
 2016 10:48:52 -0800 (PST)
X-Received: by 10.13.234.77 with SMTP id t74mr22363546ywe.12.1456944532969;
        Wed, 02 Mar 2016 10:48:52 -0800 (PST)
Return-Path: <bounce-md_30481620.56d73594.v1-e238d6a625434b138422e2e016fb51d7@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id v197si2401782ywa.1.2016.03.02.10.48.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:48:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d73594.v1-e238d6a625434b138422e2e016fb51d7@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d73594.v1-e238d6a625434b138422e2e016fb51d7@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d73594.v1-e238d6a625434b138422e2e016fb51d7@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=LnaLDl8V0yKN0UnAlMrmtcnOJLc=;
 b=qM1xwDIuiKI/56CH9K0bfercLzKeC++4Gu1noWJshKR53wX5k4zFFKkbKvQallHC5Mz6ABTe0bvQ
   xgDD0l82sBEpRHD1J5lsH3XBhUJVREtyJMyAspHKIXcbG0T5Rb0839AlNfOX4bbtfxSgMW3+6fuC
   s90M4HUxQHehzeTua54=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=BqNfVxRjOhAWi6QQt1ab2MmhuDKM0Ym7shwk7gW0kdhk0Y2aypVzwjaSnYlkicaYuAIDgswhQ17S
   JKcEmub4bpJA6PmLCc4uHxzGr0nfCT9NtnS+AjsVylOpepaJfx+XhfhSVf6+8F8VM4kPzK2fej0w
   41fuTrz5WM+9TaKZFmA=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqp8174noh for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:48:52 +0000 (envelope-from <bounce-md_30481620.56d73594.v1-e238d6a625434b138422e2e016fb51d7@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944532; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=fv1YG+5VEFZnmBFjIUNi779pYAYNFRrTqnGd6K/F2Fg=; 
 b=aSCOqrPswp2nZTldo6llYUqaglbgIP4GRvmX5ac31FnZkVMOSJhCXpg09SQjo30ogaGWXh
 6Tmkc8ytb2wtspabwOgEIxeUr6RKv1/xcAOGG2SnygIyTWQ6kkG9KRChX/e8a7E2ROrKyedB
 oVp86bLVW4HeqmSvxFEBA1ccZ+tL4=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: Remove function visorchannel_debug
Return-Path: <bounce-md_30481620.56d73594.v1-e238d6a625434b138422e2e016fb51d7@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id e238d6a625434b138422e2e016fb51d7; Wed, 02 Mar 2016 18:48:52 +0000
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302031537.GA7921@kroah.com>
References: <1456647735-15584-1-git-send-email-bhumirks@gmail.com>
In-Reply-To: <1456647735-15584-1-git-send-email-bhumirks@gmail.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.e238d6a625434b138422e2e016fb51d7
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:48:52 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 28, 2016 at 01:52:15PM +0530, Bhumika Goyal wrote:
> The function visorchannel_debug is not used anywhere in the kernel so
> remove the function definition, prototype and the export symbol.
> Grepped to find the occurences.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/unisys/include/visorbus.h      |  2 -
>  drivers/staging/unisys/visorbus/visorchannel.c | 74 --------------------------
>  2 files changed, 76 deletions(-)

This patch adds a build warning to the build, so I can't take it.
Please fix that up :(

thanks,

greg k-h

