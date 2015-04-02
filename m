X-GM-THRID: 10665162964992
X-Received: by 10.66.136.175 with SMTP id qb15mr55995931pab.11.1427963190172;
        Thu, 02 Apr 2015 01:26:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.166 with SMTP id rd6ls232176obc.78.gmail; Thu, 02 Apr
 2015 01:26:29 -0700 (PDT)
X-Received: by 10.182.149.230 with SMTP id ud6mr1254970obb.36.1427963189953;
        Thu, 02 Apr 2015 01:26:29 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zw6si516547pbc.2.2015.04.02.01.26.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 01:26:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D1D74AF3;
	Thu,  2 Apr 2015 08:26:28 +0000 (UTC)
Date: Thu, 2 Apr 2015 10:26:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Fixed indent of
 switch-case
Message-ID: <20150402082622.GB18362@kroah.com>
References: <20150401160613.GA2764@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150401160613.GA2764@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Apr 01, 2015 at 09:36:13PM +0530, Amitoj Kaur Chawla wrote:
> Fixed indent of switch-case by adding space using tabs. Problem found using checkpatch.pl

Again, changelog isn't properly linewrapped :(

