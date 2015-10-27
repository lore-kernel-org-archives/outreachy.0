X-GM-THRID: 6209555630081966080
X-Received: by 10.13.215.214 with SMTP id z205mr32434849ywd.23.1445924046338;
        Mon, 26 Oct 2015 22:34:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.214 with SMTP id f83ls1951733ioj.62.gmail; Mon, 26 Oct
 2015 22:34:06 -0700 (PDT)
X-Received: by 10.107.163.80 with SMTP id m77mr34696530ioe.0.1445924046083;
        Mon, 26 Oct 2015 22:34:06 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si3913548pbb.0.2015.10.26.22.34.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 22:34:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1ADB1258;
	Tue, 27 Oct 2015 05:34:04 +0000 (UTC)
Date: Tue, 27 Oct 2015 14:34:00 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/4] Staging: lustre: lustre_log:
 Remove unused functions
Message-ID: <20151027053400.GB395@kroah.com>
References: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
 <1445774820-9184-3-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445774820-9184-3-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 25, 2015 at 05:36:58PM +0530, Shraddha Barke wrote:
> Remove the functions which are defined but not used anywhere
> ---
>  drivers/staging/lustre/lustre/include/lustre_log.h | 89 ----------------------
>  1 file changed, 89 deletions(-)

No signed-off-by line for the whole series :(

