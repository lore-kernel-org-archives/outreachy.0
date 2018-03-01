X-GM-THRID: 6528044448013615104
X-Received: by 10.25.201.204 with SMTP id z195mr252048lff.32.1519936299977;
        Thu, 01 Mar 2018 12:31:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.23.194 with SMTP id 63ls865146ljx.8.gmail; Thu, 01 Mar 2018
 12:31:38 -0800 (PST)
X-Google-Smtp-Source: AG47ELvBiyOB9IveoJYkyuGUFTpsi4z7NwF99+n+rVsaXAdN90tgQm6w/L5oHVYf1dtWfrT12HPi
X-Received: by 10.46.77.79 with SMTP id a76mr226570ljb.12.1519936298560;
        Thu, 01 Mar 2018 12:31:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519936298; cv=none;
        d=google.com; s=arc-20160816;
        b=Wi9/MOFtkhUnBWk6C0ZaMoPU0NfFWSOWNFlq8kUntHsaIOk7ZPYDQ32Mb7i4eoCwMa
         3h7XNS5EoIhtS9HNAYWNsfAoBvteQbH6bSoSXsm9sQfifYxNtMxjF8qdDXYNj7tB24Yg
         03l+HcvHtazIMQyKAh1TeDatU1mNX0qAi7A5myM3eRR2nK5Mq90EOP277aVqV9tqdVuo
         AdSbzlWF8c9ZUT55Ya37H2c7+xFixlbRKvZ2tfKFFssLoOAul72jxJni+w+tXBFtrmmm
         KKJBo5IuC65kbqhcc81cTVSrBfsJktm9o4YDz4rUGI90DHabr844D80QkuNET3LgDOlj
         JbVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=hSbOXeEb4ujvEksd/Ptn3wl63df4a+Z4Mlsk6MjDuGo=;
        b=hUah0Oa+fJv1jeom62/oisos0UG1oSzTzXYQawWuZl8CUvzLy018uCBpHzUDgKfVPb
         bFCk6zzVuneVIIXVSiRX4iFFCdoioOr/WPP5VM8n+ZRCxJ01/Rm0TRGez/8aTRbAKtC5
         lOqZ+JpTwyUK+XXzR6I6utyibkuQulINNaLJnseqAxhSDi95KQ3dF8VxUEaKeDDtJw0f
         qeMa4x+erGcJ2AcmK+qdRimGNVWTqQeF4X6iUnm5QbhA1e2UU8/tJvU1uZKR+Mo4EnFM
         abD0sli1GOLckmi83rCOVSRkahJSOufBe9zaq1JK1Cr7f7NPvm881EgyqmKYZz4UZa6w
         q+Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v6si249094ljc.0.2018.03.01.12.31.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 12:31:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (clnet-b04-243.ikbnet.co.at [83.175.124.243])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 64D5011C2;
	Thu,  1 Mar 2018 20:31:36 +0000 (UTC)
Date: Thu, 1 Mar 2018 21:31:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net,
	stefan.wahren@i2se.com, f.fainelli@gmail.com, rjui@broadcom.com,
	sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com
Subject: Re:
Message-ID: <20180301203136.GA23219@kroah.com>
References: <20180301193342.GA12402@kroah.com>
 <1519935610-27428-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1519935610-27428-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Fri, Mar 02, 2018 at 01:50:10AM +0530, Nishka Dasgupta wrote:
> This is with reference to your last email pointing out that you have no
> context for what I am responding to. Unfortunately, I have been unable
> to get mutt to load my inbox, so I could not and cannot quote text
> directly. I have done my best to reproduce the conversation below in a
> coherent fashion; nonetheless, I apologise for any persisting lack of
> clarity.

If mutt can't read your inbox, how are you reading it at all? :)

> An hour ago I submitted the following commit with respect to
> drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c: [PATCH v2]
> staging: vc04_services: bcm2835-camera: Add blank line
> 
> Your reply: Checkpatch is wrong here, don't you think? Are you sure this
> is actually doing what you think it is?
> 
> My reply: Checkpatch suggested two warnings for this file in consecutive
> lines: "static VCHI_CONNECTION_T *vchi_connection;" and "static
> VCHI_INSTANCE_T vchi_instance;". Both warnings said to add a blank line
> after the declaration. If checkpatch was wrong, is it okay if I submit a
> version 2 with a blank line only after "vchi_instance" and not below
> "*vchi_connection" (effectively undoing one of my commits)?

Look at the code, and see what checkpatch is telling you and see if that
actually matches with what the code shows.  Then make the change that
you know is correct based on your knowledge of C, and how the code
should look.  Hint, checkpatch is wrong here, but the code is also wrong
as-is.

thanks,

greg k-h

