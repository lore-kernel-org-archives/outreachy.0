X-GM-THRID: 6399916000486096896
X-Received: by 10.129.181.8 with SMTP id t8mr10686138ywh.12.1490215384245;
        Wed, 22 Mar 2017 13:43:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls3002671ota.23.gmail; Wed, 22 Mar
 2017 13:43:03 -0700 (PDT)
X-Received: by 10.237.53.2 with SMTP id a2mr6699079qte.16.1490215383861;
        Wed, 22 Mar 2017 13:43:03 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 190si711085pfv.3.2017.03.22.13.43.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 13:43:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2F0E3B62;
	Wed, 22 Mar 2017 20:43:03 +0000 (UTC)
Date: Wed, 22 Mar 2017 21:42:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, speakup@linux-speakup.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH 00/11] staging:speakup: Multiple Checkpatch issues.
Message-ID: <20170322204249.GA13164@kroah.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
 <6e75c652-f348-4592-a79d-4f290de9bea1@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6e75c652-f348-4592-a79d-4f290de9bea1@googlegroups.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 22, 2017 at 12:20:23PM -0700, Arushi Singhal wrote:
> On Tuesday, March 21, 2017 at 5:12:41 PM UTC+5:30, Arushi Singhal wrote:
> 
>     Improve readability by fixing multiple checkpatch.pl
>     issues in speakup driver.
> 
>     Arushi Singhal (11):
>     � staging: speakup: Moved logical to previous line.
>     � staging: speakup: Remove multiple assignments
>     � staging: speakup: Simplify "NULL" comparisons
>     � staging: speakup: fixes braces {} should be used on all arms of this
>     � � statement
>     � staging: speakup: Remove multiple assignments
>     � staging: speakup: Moved OR operator to previous line.
>     � staging: speakup: spaces preferred around operator
>     � staging: speakup: Removed Unnecessary parentheses.
>     � staging: speakup: Simplify the NULL comparisons
>     � staging: speakup: Match alignment with open parenthesis.
>     � staging: speakup: Fix alignment with parenthesis.
> 
>     �drivers/staging/speakup/fakekey.c � � � �| � 2 +-
>     �drivers/staging/speakup/kobjects.c � � � | � 2 +-
>     �drivers/staging/speakup/main.c � � � � � | 110
>     +++++++++++++++++--------------
>     �drivers/staging/speakup/selection.c � � �| � 4 +-
>     �drivers/staging/speakup/serialio.c � � � | � 2 +-
>     �drivers/staging/speakup/speakup.h � � � �| �12 ++--
>     �drivers/staging/speakup/speakup_acntpc.c | � 8 +--
>     �drivers/staging/speakup/speakup_apollo.c | � 2 +-
>     �drivers/staging/speakup/speakup_decext.c | �10 +--
>     �drivers/staging/speakup/speakup_decpc.c �| �26 ++++----
>     �drivers/staging/speakup/speakup_dectlk.c | � 6 +-
>     �drivers/staging/speakup/speakup_dtlk.c � | � 2 +-
>     �drivers/staging/speakup/speakup_keypc.c �| � 6 +-
>     �drivers/staging/speakup/speakup_ltlk.c � | � 2 +-
>     �drivers/staging/speakup/varhandlers.c � �| �18 ++---
>     �15 files changed, 114 insertions(+), 98 deletions(-)
> 
> 
> Hi
> Any update on these patches?

One day?  Please give us a chance, realize that it's normally a 2 week
timeframe to get a patch reviewed...

thanks,

greg k-h

