X-GM-THRID: 6886436790360604672
X-Received: by 2002:aca:b5c6:: with SMTP id e189mr1658890oif.47.1603373807421;
        Thu, 22 Oct 2020 06:36:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:390b:: with SMTP id g11ls391509oia.1.gmail; Thu, 22 Oct
 2020 06:36:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyAcecVOOS6keKw0vnpnmv5vcTG2EL2EffhQFOI9wECw0uobgF2qzzjuPUqqhLFkCKa0TPT
X-Received: by 2002:aca:f0c:: with SMTP id 12mr891960oip.9.1603373806041;
        Thu, 22 Oct 2020 06:36:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603373806; cv=none;
        d=google.com; s=arc-20160816;
        b=tvcyE+7EzLKgS9j3xMI//h8SM4xd4IVr1g7mA8UsEYuqzmwHBJdoYutEzZhFEj+E97
         xsvATgAsjYwDcrLHyHa2MXnOQXF8GzxufdMz+asbl97wH27ExqdQ3szjADFeXhULEe/6
         lU+IUSIemAqOv4nuDML1U3zOrBgbm7WZMJNgfcbTTQmJCWjGzIUg9x/i4Wmj/n82tps5
         xiSb09nW5iiW2nx/5Ry3l0MqvSM6GLEEiuvxnXgzv8iRCsoMfW8VO9YBpt6Em+fBWnh7
         bqn+mpmofUX8Qz5SiYmFNtUQCNw+de26moI+6ifco6SL+4bY0b9RLvCLvjSHSMd7OGFN
         iKyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wPLJPmsbxVrItxDETA28ew4bzr0N2SHhAs9VgLtWzc0=;
        b=jJ5IzMmJ2Qt7TctW4M0FrRN/TecTrDLpDUVmRcaAHNY+iyF9Lu+jVZmKmBn4dJwiuT
         7KS6FkI3XacHyLo9QKbCtU/vtr0t3fr6rIktJmhDcYP0DV75tHASGW3Bbj8qItk5MkJY
         8A6u1L/gOo9EZp8xr0TNaxHyMy/5DhQQqhFDCfzxM4BAIVgsA6MHDmfl95VhnbT5Y51K
         onNE9TJewDxP2SpTSifVcE7ZSQINnt50wVWqEOqy/7iJbBtyNzRiuJSZkWGqg5uIZ/6T
         ld2zljYF3EswuBmHn7XzxIkS0qhSg3Pxak1Ag8OaVpzfEpHtArNJu4+5PQxYcwnQEmQt
         udFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=W+wPY2NS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n185si82003oih.3.2020.10.22.06.36.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:36:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=W+wPY2NS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 60D82222E9;
	Thu, 22 Oct 2020 13:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603373805;
	bh=87vqJzQ9pXI0oOLMwIbEk3kLfcuJt9ZN8IiRhSh9nJs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W+wPY2NSoVcRCV75Bmdb7cjeGYE9ij9LM2Os9rsTmzUPF3i+fK/X5DQM6DOL/e5ds
	 np4to4d85zEylX/qnz8bU33geU70zgyurAVNxqzEys/q4N4Hewf5NWgvzatmcWuPj5
	 /ihU/8VfPJnurklr0OF4R/D/2kPLpfmLNkPQajWY=
Date: Thu, 22 Oct 2020 15:37:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel][PATCH 0/5] drm/amdgpu: Replace snprintf()
 with sysfs_emit
Message-ID: <20201022133722.GA1784385@kroah.com>
References: <cover.1603371258.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1603371258.git.sylphrenadin@gmail.com>

On Thu, Oct 22, 2020 at 07:01:44PM +0530, Sumera Priyadarsini wrote:
> Using snprintf() for show() methods holds the risk of buffer overrun
> as snprintf() does not know the PAGE_SIZE maximum of the temporary
> buffer used to output sysfs content.
> 
> This patchset is a series of Coccinelle cleanups across the staging
> directory to convert snprintf with scnprintf in the relevant files.
> 
> Sumera Priyadarsini (5):
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> 
>  drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c | 2 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c   | 8 ++++----
>  drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c  | 4 ++--
>  drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c      | 2 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c      | 4 ++--

These files are ot "in the staging directory" as your text above states :(

Also, you have 5 patches that do different things, yet have the same
exact subject line, which isn't acceptable either.

thanks,

greg k-h

