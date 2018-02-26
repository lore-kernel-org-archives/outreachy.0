X-GM-THRID: 6526261510442844160
X-Received: by 10.223.188.141 with SMTP id g13mr901913wrh.16.1519656187555;
        Mon, 26 Feb 2018 06:43:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.231.15 with SMTP id e15ls1618572wmh.8.gmail; Mon, 26 Feb
 2018 06:43:05 -0800 (PST)
X-Google-Smtp-Source: AG47ELtaWTX1cCdW3sYMgbDPjVIn7Xx2E6MCEGKfnWWCOC0TCKL7qyqnpWYuerAGeRVIkcp72U7o
X-Received: by 10.28.247.4 with SMTP id v4mr1097113wmh.1.1519656185779;
        Mon, 26 Feb 2018 06:43:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519656185; cv=none;
        d=google.com; s=arc-20160816;
        b=KZxLZJ1jID1w3j8tWxOtiCtQGTx5B4eEvo2Ovx38yZv82sYryYelfNjUGUbgnbHEAc
         b6hTNxIZhSRUUXuDpDpPUwldntCYNxUJyggrGmaB+woHUB1+KmbjaRRxzEkb0SWGEZIJ
         pgbkqOoVlWW85XFnbapLO5z2zBLvHuGPa0YR+7uf4i6qzC2TXHsIF/MXA4HjIX6ayIgw
         SrXUrHXbmiNprJewg47oKSA3SE5Zv3/Tw7NM2SLjpNHZN6bzhICRjPhslaCy5Bzxi5E8
         nDIWTmGfRqRkWA7pvtK2yaV0nBl5wNzie45rmJjOICUh8k/D9xI2RQy9kfJlGqLFwS7B
         At6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=S1g+UrvudtP2IVxQH+a1pqSqnPhQTQQBDgX/LC2CMrs=;
        b=QBK/kG+OmdC6Ejkwol0k/UAARqkxGxtVe6LRMt9a+SbUTkkPDkQIPXA0FnLJImxF1D
         O94n1ZXU5Y+PC7+CYeFWUudw1m7BEG4l+rIm0VmU0tZOzmrDryZaqFRJcqJKXG9BU6Gl
         d88YjjUrf6HGdextqfWgfCVUArnrGrRHulprlOfEg96ad2+uz1M4M+3+zzPbqNdQfNwf
         VQTlc0SuhcnFBzQAquIgIrtedNkij0iAElMxu3RnelaeWZD3lwAVN/FqunUpj9nxFzqe
         gwhJ8KrZwlFS6R5MeJXktpjQDjEiRk6L+cHQrQ+e6MdYkurRfTtHV4M3Sw27rIMpQ34X
         679Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d12si177585wre.4.2018.02.26.06.43.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Feb 2018 06:43:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (clnet-b04-243.ikbnet.co.at [83.175.124.243])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0C184E45;
	Mon, 26 Feb 2018 14:43:03 +0000 (UTC)
Date: Mon, 26 Feb 2018 15:43:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Santha Meena Ramamoorthy <santhameena13@gmail.com>,
	oleg.drokin@intel.com, andreas.dilger@intel.com,
	jsimmons@infradead.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: remove else after
 return statement
Message-ID: <20180226144305.GA23979@kroah.com>
References: <1519513659-12304-1-git-send-email-santhameena13@gmail.com>
 <alpine.DEB.2.20.1802250929320.2531@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802250929320.2531@hadrien>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Sun, Feb 25, 2018 at 09:30:40AM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 24 Feb 2018, Santha Meena Ramamoorthy wrote:
> 
> > Remove else after a return statement as it is not useful. Issue found
> > using checkpatch.
> 
> I have the impression that the else branch is there to be parallel to the
> then branch, and then the return is pushed into the branch because an else
> branch with just a comment would look silly.

Exactly, I'd recommend to just leave this code as-is for now.

thanks,

greg k-h

