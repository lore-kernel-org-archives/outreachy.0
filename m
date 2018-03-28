X-GM-THRID: 6536210357179908096
X-Received: by 2002:a17:902:c03:: with SMTP id 3-v6mr17843786pls.1.1522262785591;
        Wed, 28 Mar 2018 11:46:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.172.8 with SMTP id v8ls1115217pfe.7.gmail; Wed, 28 Mar 2018
 11:46:24 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuUF/83TQ1PZ9d6voecG6np/9WlpDa5Bphz/bmmZrlsJ0+vAetDdpum3VcEw6ZiY7lrv8pr
X-Received: by 10.98.103.68 with SMTP id b65mr8417573pfc.11.1522262784369;
        Wed, 28 Mar 2018 11:46:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522262784; cv=none;
        d=google.com; s=arc-20160816;
        b=xjVrXoiYN6DIORLxxdx4IoCC9JrjGaFotFR2GUFJm9TPZyhLB4cG5cFND9B/A4G/5W
         fgHRvLYw0QtQET8aOpwOH6cUEq1kzSE2te7EK/+gywekt2qL0VfjFUg83mgltFNsrvOH
         bOa40YJlm2JrutlS7dt0bE7s4OeGGlpNjAUKR9TOE6vohla+m6gb1xVyOdkO+lAFGmL9
         ou4TTEwf50mF5tw3ImMSx+FI4NVXKkpIWOeO2lxdhsT8x4+Rxlpa9nFZUuGzDPx5+6Mf
         BYsk57rwq/5sypMPYwx5cDgJjaJMjMFHmzJ8uLqVaLeTeZHvRFPA/s199wDLUMCGA/Gn
         OVHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=bi5Toyi7LDGltecxw6n7VkiTz6mjMzoaFyWNodkNKrI=;
        b=gD4qQOCWWOf7RGL1XvTvCFUCksFb72iwNi4j5Y/ynVxEikZ5itwT3y0HfLpcI62ydx
         EF1891vx/hF0HaSKZtSgpdh/SLVED5mMiC4ql53KiszrmyYIgrVzsu47fuf7Ayge/RxR
         1TBd9NGLgdwB3WlzMSPQntS3je2qR78e45eNm0KjFtHPIhyruv7upIYM4CKxyKYv1U6H
         6E2Q+mSAwzeuIJswBUIhPYRL9/+b2euRlHcIV9ELLrfssgisl+vnziHi4GKtCcoke0Z3
         4QkHt0bEP1BZY+iiSu449hizDdVR1tIUV0PsqtCrT9yBeF+Mtxig6f+uNn1bKiRGRg6Z
         B0/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q3-v6si360395pll.5.2018.03.28.11.46.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 11:46:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B7405CD3;
	Wed, 28 Mar 2018 18:46:23 +0000 (UTC)
Date: Wed, 28 Mar 2018 20:46:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v5] staging: vt6655: Remove else after return
Message-ID: <20180328184621.GA7042@kroah.com>
References: <1522261588-17147-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1522261588-17147-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 28, 2018 at 06:26:28PM +0000, Nishka Dasgupta wrote:
> Remove else after return. Issue found with checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v5:
>  - Add blank line after variable declarations.

No you did not :(

Please relax, stop, take a day off, and come back to this later.  There
is no rush here to get it right and you are just causing mistakes by
trying to push it out quickly.  It only causes mistakes, as seen here.

thanks,

greg k-h

