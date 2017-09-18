X-GM-THRID: 6465542343215808512
X-Received: by 10.129.57.139 with SMTP id g133mr21163154ywa.226.1505727105920;
        Mon, 18 Sep 2017 02:31:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.141 with SMTP id g135ls10373792ioe.23.gmail; Mon, 18
 Sep 2017 02:31:45 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6uCOEUyJhjY/VX5JmM8j6WxPUGqF0eO2uNR321M0AtlhTTIYec4f/oaeqKq/SbQ2Wiv2Hi
X-Received: by 10.84.197.131 with SMTP id n3mr20554040pld.19.1505727105170;
        Mon, 18 Sep 2017 02:31:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505727105; cv=none;
        d=google.com; s=arc-20160816;
        b=L/jDV56C9xPZS0sNQlQGUsa5jQbJq7lBKICOwzS12BHDPWCuz3pZ0gSdUxJQ1lhZ0f
         Qn62WaFw7Ri9eNYNlTR0xzv1NmNXwAccV60XiyERpnmsY86e3LW5VCdkdi8IyHUZ1c82
         kGSonXNrv7ho13tPZie6+I7r3xznYYhgCoKkbyOh9Jg+JBeBweBkH7RmMZpHkPRgsSnG
         28QzqQIqC+vHIMBcVg4aUIN38tW5Z9jR700jtJGe14Imh0U+XjVEp+Pv2hUGMBAKoCuM
         YlWVAc6CYbnqtX4YLBEUgRIivsmor9WwoBNWuXGj9IcAmnTPOahh3qKdpPF5fVEWalW1
         7iLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=7qg0GkU4jIHu8gEYsGlm94k6tVAyGt1LUAfX0TU4YWQ=;
        b=z1f9Zk4Zfa0p6fz9i4X4DHDKmPDibeY2dBICMOWUYSPSajBnBz2gvTWQwgE+0Jursq
         M7rnCL+6XDqUPd5LFkFbomHzJt3qqcsMCOQukBzewV+bcCmLOZ4rAXYNIMd6O7yjcr9d
         SnBHEjoMtwuJbclvNl/8R+tt8cU4ot5t2e3cgku1dE/0vLmfm8owXYFJrJbEuAuVrsXK
         HsiR6EIlsH0U/Bsss1/LgRMtTFyHICivNLMuW8tYuy1aLyRDcKP+qXr15aDRXYtJiajD
         dXlkuY03+FA47wTX/EZ8H9fJM7Htdqo9wwTxHQ25ha/3xFa/qwQIXMDd6r6gzC9vvddJ
         B5UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=oEM0hW/g;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id g5si14768itg.1.2017.09.18.02.31.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 02:31:45 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=oEM0hW/g;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id B7F7620A70;
	Mon, 18 Sep 2017 05:31:44 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
  by compute6.internal (MEProxy); Mon, 18 Sep 2017 05:31:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=7qg0GkU4jIHu8gEYsG
	lm94k6tVAyGt1LUAfX0TU4YWQ=; b=oEM0hW/gV5B1xsnTt2er1iUFxMp/gPwf7+
	v0L5um16aEwC5oSc8c1llXVxL4plfjO4R52waAnf8LDbHgDlnKb8OHyKDEQqYJnd
	bSjK0hGros42eFRllgCIKSLIAI+gxnaGqe89KMD6kNxYgMEvXbBkGslImZ1lBOrX
	JV6RhVREgKUH8KMuAg+WV3Sn/sJAvKjaz/vRDDo5TJ24CP7SJJAPQAivNT863sZx
	4jF7Yin6Rq284r645gvUuO6Yz6W3WgeSiAyvavY2nxo4F14WMKlcDcKhVv2JPC/G
	BuJhdQc0o1HYvj4w2jeP+O/RpV2CAOpCYvnvJXTB3yaQ+p3GR03Q==
X-ME-Sender: <xms:gJK_WdL5yd-ig60hPYIIMI0xHP5j0Rp-iIMiy6GMCt4rk2ZH41qrbg>
X-Sasl-enc: akXcW7QXe6je5UiyoyjUMNlmyorh/uhh3WlQT7gzMn0g 1505727104
Received: from localhost (lfbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.messagingengine.com (Postfix) with ESMTPA id 6330D2471C;
	Mon, 18 Sep 2017 05:31:44 -0400 (EDT)
Date: Mon, 18 Sep 2017 11:31:56 +0200
From: Greg KH <greg@kroah.com>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: Re: [Outreachy kernel] [PATCH v3 0/4] drm/agpsupport: Code cleanup
Message-ID: <20170918093156.GA9461@kroah.com>
References: <cover.1505376068.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505376068.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Thu, Sep 14, 2017 at 01:36:17PM +0530, Meghana Madhyastha wrote:
> Removes checkpath.pl errors and warnings.
> 
> Changes in v3:
>  -Change commit title prefix from drm to drm/agpsupport
>  -Split the commit "Move EXPORT_SYMBOL so that it immediately follows its
>      function" into two commits. Removing the extra blank line is 
>      now a separate commit.
>  -Included merging conditionals in "Remove assignment in if condition"
>      in the commit message
> 
> Meghana Madhyastha (4):
>   drm/agpsupport: Replace "foo * bar" with "foo *bar"
>   drm/agpsupport: Remove assignment in if condition
>   drm/agpsupport: Move EXPORT_SYMBOL so that it immediately follows its
>     function
>   drm/agpsupport: Remove extra blank line

Note, I can't do anything with patches that are outside of
drivers/staging/ for outreachy submissions.  Hopefully the drm
developers are ok with this, it's up to them to accept these...

thanks,

greg k-h

