X-GM-THRID: 10253217300480
X-Received: by 10.67.8.106 with SMTP id dj10mr12844130pad.30.1427963169383;
        Thu, 02 Apr 2015 01:26:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.108.136 with SMTP id hk8ls257964obb.91.gmail; Thu, 02 Apr
 2015 01:26:08 -0700 (PDT)
X-Received: by 10.182.149.230 with SMTP id ud6mr1253640obb.36.1427963168866;
        Thu, 02 Apr 2015 01:26:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si529692pdo.0.2015.04.02.01.26.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 01:26:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B8FAEAF3;
	Thu,  2 Apr 2015 08:26:07 +0000 (UTC)
Date: Thu, 2 Apr 2015 10:26:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: sm750fb: Fix C99 Comments
Message-ID: <20150402082602.GA18362@kroah.com>
References: <20150401163406.GA3271@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150401163406.GA3271@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Apr 01, 2015 at 10:04:06PM +0530, Amitoj Kaur Chawla wrote:
> Used C89 instead of C99 Comments and removed C99 comments performing prints only. Problem found using checkpatch.pl
> ERROR: do not use C99 // comments
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Wrap comment lines at 72 characters

You didn't do that, look above, your changelog is still not linewrapped
:(


