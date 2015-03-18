X-GM-THRID: 8728898174976
X-Received: by 10.70.96.237 with SMTP id dv13mr64432024pdb.2.1426672974187;
        Wed, 18 Mar 2015 03:02:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.69 with SMTP id ru5ls1620174igb.2.canary; Wed, 18 Mar
 2015 03:02:54 -0700 (PDT)
X-Received: by 10.70.96.163 with SMTP id dt3mr69629669pdb.1.1426672974005;
        Wed, 18 Mar 2015 03:02:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si3012199pac.2.2015.03.18.03.02.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:02:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ECF0DA80;
	Wed, 18 Mar 2015 10:02:52 +0000 (UTC)
Date: Wed, 18 Mar 2015 11:02:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Staging: speakup: Use
 module_spk_synth
Message-ID: <20150318100250.GA20143@kroah.com>
References: <cover.1426601962.git.vthakkar1994@gmail.com>
 <767a3b6bf7c8776e57c6a11caa1d30bcedb265be.1426601963.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <767a3b6bf7c8776e57c6a11caa1d30bcedb265be.1426601963.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 17, 2015 at 07:57:39PM +0530, Vaishali Thakkar wrote:
> Macro module_spk_synth can be used for speakup drivers
> whose init and exit paths does only module registrations.
> So, here remove some boilerplate code by using
> module_spk_synth.
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> Changes since v1:
>         - No change but as patch is in series with
>           another patch, send new version.
> Changes since v2:
> 	- No change but as patch is in series with
>           another patch, send new version.

You didn't test build these changes :(

PLEASE always test your patches before sending them out, this series
broke the build horribly, and should have been very obvious that it
should have not been sent out.

greg k-h

