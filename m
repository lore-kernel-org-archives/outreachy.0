X-GM-THRID: 6464167912849539072
X-Received: by 10.28.153.6 with SMTP id b6mr953383wme.20.1505148257507;
        Mon, 11 Sep 2017 09:44:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.196.7 with SMTP id u7ls1296018wmf.21.gmail; Mon, 11 Sep
 2017 09:44:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB5a1mDrpRS51slqKXXuE/i5+6r0faVPAg1K33n1JGajYVkDlOjRR+TPU6McZrgo4MKH2x+
X-Received: by 10.28.16.71 with SMTP id 68mr936821wmq.12.1505148256531;
        Mon, 11 Sep 2017 09:44:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505148256; cv=none;
        d=google.com; s=arc-20160816;
        b=nJRsi5uFSKeDRlXpZdqREy4glGMj5AIPeaENQ/72aU87f5fw6b3GWuPfhvBW+b4mx/
         FheMlX/kBIaiogbeIRjbCBCiS5tE9QxoH8gugWFJ5aNUrG8HuokjHfMK5M8EM4YiSh3v
         /28/ln9iUi0DZYG9uKWzggNxolHF4oD2aAXfu452ZMK0lgvzdyQf8tlsIcgI+1tjZHBR
         q/emwEmk0lOn9USKYgoP/BfoQsuA7LFTcM1UFwhYp7O7uYhN0jViBLDzZRS2/EwFmJei
         g7Xg9sJuvyCU0E+4bGRvl2w2ttDJwast+mlcXuGZUFHAf7x/wpUmUrmZ9djN09Q2EVSO
         3J7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=hGrP0efZdExCDCtq3vgTBr+PBINS796FTBxf1hUm5eI=;
        b=ghEtGrHAM1/D96ko55Gfz9CBIHYEcNAwEYCVv+JY8vEm27EQC7xZsbH6TiFr40g85E
         gSDCOHXztioCkF8VcDcQWXo12drI94RH+EjoDWP8YoKc5P3XzD5KjaiIxxItIRlbjtOK
         vnRFDo9UgFuWK1oipmPQIHHM5oomW3B1mAoE74cXPXAhBMSZgOZyfN43kCvoRV88c9nX
         v/5LWUsIV5ti86DUqROcRRQ4fqm94lkYv+pvovqkrq7J4JXYZ+KjE+8vTkM/X69O3E61
         vE1V0asDeo44o8AuZ87E+qthHezwsmWbVpgKfnu3pSudvNaE8Eg7S5t3UjgQii/maYq6
         e83Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 191si107392wmn.2.2017.09.11.09.44.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:44:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EADCB94F;
	Mon, 11 Sep 2017 16:44:14 +0000 (UTC)
Date: Mon, 11 Sep 2017 09:44:14 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 06/10] staging: rtl8723bs: Add space
 after ','
Message-ID: <20170911164414.GA11018@kroah.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>
 <f38c5d1ba5518dce605cd9eb5d7adbdee3f7544d.1505052882.git.harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f38c5d1ba5518dce605cd9eb5d7adbdee3f7544d.1505052882.git.harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sun, Sep 10, 2017 at 11:02:02PM +0530, Harsha Sharma wrote:
> Space required after ','
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>

This patch does not apply, can you rebase and resend?

thanks,

greg k-h

