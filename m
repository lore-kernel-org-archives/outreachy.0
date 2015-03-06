X-GM-THRID: 6758181371904
X-Received: by 10.236.36.39 with SMTP id v27mr18071781yha.24.1425725815965;
        Sat, 07 Mar 2015 02:56:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.25.165 with SMTP id d5ls436172igg.42.gmail; Sat, 07 Mar
 2015 02:56:55 -0800 (PST)
X-Received: by 10.50.26.40 with SMTP id i8mr20088500igg.8.1425725815758;
        Sat, 07 Mar 2015 02:56:55 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si1724668pdc.0.2015.03.07.02.56.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:56:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A83BD990;
	Sat,  7 Mar 2015 10:56:54 +0000 (UTC)
Date: Fri, 6 Mar 2015 15:52:38 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/7] Staging: media: Clean
 dev_err() logging
Message-ID: <20150306235238.GA27206@kroah.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
 <1425591756-29568-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425591756-29568-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 06, 2015 at 12:42:36AM +0300, Haneen Mohammed wrote:
> This patch removes  __func__ from dev_err. dev_err includes information about:
>  (devcice, driver, specific instance of device, etc) in the log printout.
> This was done using Coccinelle, with the following semantic patch:

Not all patches in this series apply anymore.  Please refresh against my
latest staging-testing branch and resend.

thanks,

greg k-h

