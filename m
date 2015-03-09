X-GM-THRID: 6598140362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,230d94accd1f422f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.25.137 with SMTP id c9mr39741099igg.0.1425903551682;
        Mon, 09 Mar 2015 05:19:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.161 with SMTP id 33ls446779ios.77.gmail; Mon, 09 Mar
 2015 05:19:10 -0700 (PDT)
X-Received: by 10.66.194.234 with SMTP id hz10mr25748948pac.18.1425903550047;
        Mon, 09 Mar 2015 05:19:10 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si682825pac.1.2015.03.09.05.19.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 05:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (li684-192.members.linode.com [23.239.3.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8E64713;
	Mon,  9 Mar 2015 12:19:09 +0000 (UTC)
Date: Mon, 9 Mar 2015 13:19:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Somya Anand <somyaanand214@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] Staging: rtl8188eu: Remove
 unneeded return statement
Message-ID: <20150309121906.GA18622@kroah.com>
References: <1425751228-9804-1-git-send-email-somyaanand214@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425751228-9804-1-git-send-email-somyaanand214@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 07, 2015 at 11:30:26PM +0530, Somya Anand wrote:
> This patch removes unnecessary return statement from a void
> function and hence make it more compatible.
> 
> This issue is identified by checkpatch.pl
> 
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 ----
>  1 file changed, 4 deletions(-)

This does not apply to my tree :(

