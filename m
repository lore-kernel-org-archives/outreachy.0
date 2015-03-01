X-GM-THRID: 5567574704128
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d5db48a77f760ce5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.138.71 with SMTP id qo7mr15458275pdb.9.1425244603499;
        Sun, 01 Mar 2015 13:16:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.130 with SMTP id j2ls184890qgj.37.gmail; Sun, 01 Mar
 2015 13:16:43 -0800 (PST)
X-Received: by 10.236.37.72 with SMTP id x48mr23385816yha.33.1425244603260;
        Sun, 01 Mar 2015 13:16:43 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1278558pac.0.2015.03.01.13.16.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:16:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CA53426;
	Sun,  1 Mar 2015 21:16:42 +0000 (UTC)
Date: Sun, 1 Mar 2015 13:16:42 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Fix
 __printf(string-index, first-to-check) is preferred over
 __attribute__((format(printf, string-index, first-to-check))) in
 libcfs_debug.h
Message-ID: <20150301211642.GA5733@kroah.com>
References: <1425243637-10849-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425243637-10849-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 11:00:37PM +0200, Dilek Uzulmez wrote:
> Fix checkpatch.pl issues with __printf(string-index, first-to-check) is preferred over __attribute__((format(printf, string-index, first-to-check))) in libcfs_debug.h
> 

Along with fixing the subject, this is also too long of a line :(

Please fix and resend.

thanks,

greg k-h

