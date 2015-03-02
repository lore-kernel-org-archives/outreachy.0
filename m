X-GM-THRID: 4683701682176
X-Received: by 10.67.29.231 with SMTP id jz7mr24824556pad.9.1425256184696;
        Sun, 01 Mar 2015 16:29:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.38.197 with SMTP id i5ls589544obk.62.gmail; Sun, 01 Mar
 2015 16:29:44 -0800 (PST)
X-Received: by 10.182.78.69 with SMTP id z5mr24374669obw.4.1425256184499;
        Sun, 01 Mar 2015 16:29:44 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si1280588pbc.2.2015.03.01.16.29.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:29:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 37C04475;
	Mon,  2 Mar 2015 00:29:44 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:29:44 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: lustre: lov: Add
 blank line after declarations
Message-ID: <20150302002944.GA28370@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425059607-13367-1-git-send-email-haticeerturk27@gmail.com>
 <1425061227-13966-1-git-send-email-haticeerturk27@gmail.com>
 <1425061706-14179-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 08:28:26PM +0200, Hatice ERT�RK wrote:
> The following patch fixes the checkpatch.pl warning:
> drivers/staging/lustre/lustre/lov/lov_object.c WARNING: Missing a blank
> line after declarations
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_object.c | 1 +
>  1 file changed, 1 insertion(+)

3 patches, all with the same subject: yet they do different things :(

Please fix up and resend.

thanks,

greg k-h

