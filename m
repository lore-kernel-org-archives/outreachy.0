Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52BEAD30
	for <outreachy@lists.linux.dev>; Tue, 28 Mar 2023 18:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1680026524; bh=KsgMDSI9gMx1y+AcF8WQLARjmDuazaaEM2rUXyn3R1I=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=bdBohA06KKBj49yO77XpKTZtkWFVAKqpWD8ddmpxgxkiUVPUkDCFQsvYIRTX5fyPa
	 rvXr8T9/mn+soKkQSKNId+XP5wbrzy64/UwdzKIMn8TSHcyZZDeA2ydGcLbaXEh/mx
	 a96pSqro6tveIzZZrmRQ7bbiWfVIq2+BPMIucTJc=
Received: by b221-3.in.mailobj.net [192.168.90.23] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Tue, 28 Mar 2023 20:02:04 +0200 (CEST)
X-EA-Auth: Yovy0GgCXp/torXZ3V8CXo/+0eGouq0O76W1a5uHf+bOzfSn43CtwKrmkOtxE2QLlMsS66mUMJt4eSM2Tk6cdohGsnkJWytr
Date: Tue, 28 Mar 2023 23:32:00 +0530
From: Deepak R Varma <drv@mailo.com>
To: Khadija Kamran <kamrankhadijadj@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Suggestions on CHECK avoiding camel case
Message-ID: <ZCMrmDaudxSMsPwt@ubun2204.myguest.virtualbox.org>
References: <ZCIO5nBdYVEwdTpB@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZCIO5nBdYVEwdTpB@khadija-virtual-machine>

On Tue, Mar 28, 2023 at 02:47:18AM +0500, Khadija Kamran wrote:
> Dear Outreachy Mentors,
> 
> I am working on the folowing check reported by checkpatch.pl:
> 
> CHECK: Avoid CamelCase: <dot11RSNAStatsCCMPFormatErrors>
> #37: FILE: drivers/staging/rtl8192e/rtllib_crypt_ccmp.c:37:
> +       u32 dot11RSNAStatsCCMPFormatErrors;
> 
> CHECK: Avoid CamelCase: <dot11RSNAStatsCCMPReplays>
> #38: FILE: drivers/staging/rtl8192e/rtllib_crypt_ccmp.c:38:
> +       u32 dot11RSNAStatsCCMPReplays;
> 
> Such issues are reported by checkpatch in other files in
> drivers/staging/ modules as well.
> 
> Should I change the varible names here or should I leave it as is?

Hi Khadija,
The variable names appear relatively odd to me. You can propose to alter these
as per the Linux Kernel coding-style. One thing I would suggest additionally
would be to add a comment at the beginning of the variable declaration that
would read something like:
	/* .11 RSNA stats for CCMP */
	u32 ccmp_format_errors;
	u32 ccmp_replays
	u32 ccmp_decrypt_errors;

Send these as 3 patches with the comment and variable change in patch 1 and the
other two variables in two separate patches. Make sure you are able to build the
full driver [.ko] after each patch.

I _think_ the change is good, however, it will depend upon the maintainers if
they too like it.

Please allow a few hours for any other mentors to comment before you start
making the changes.

Thanks,
Deepak.

> 
> Kindly guide me with this.
> 
> Thank you for your time.
> 
> Regards,
> Khadija
> 
> 


