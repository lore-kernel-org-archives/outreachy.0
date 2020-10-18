X-GM-THRID: 6883926801253400576
X-Received: by 2002:a63:191b:: with SMTP id z27mr9530234pgl.373.1602999170779;
        Sat, 17 Oct 2020 22:32:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ee4b:: with SMTP id 11ls3078239plo.8.gmail; Sat, 17
 Oct 2020 22:32:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxeLiD4RMuMmtSTzxubhc3D0A0cq91eXzoVqnxEgJl/MNtPTfsPf93zgNs3b0BE8HXlqHKq
X-Received: by 2002:a17:902:864b:b029:d3:ce46:2829 with SMTP id y11-20020a170902864bb02900d3ce462829mr12297261plt.16.1602999169052;
        Sat, 17 Oct 2020 22:32:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602999169; cv=none;
        d=google.com; s=arc-20160816;
        b=REyP9+9iMRfZX7QWYtxikeeEMexSGkdqGlOc+xM6xR+ZPCyApaM85zHJjB2WUrMCBF
         iipe7t85kRK+mBAoXXe4NspHfG0Jc63TS5qYwTQ8h2lCuYDByRE/HQct2+B8rPYo/lZt
         FktFTqiB2b3WR9DYfTP4PsHXtWYOewyDrlCOeFh+n5FkioVAU8wMlDPUjcK7g6D51zmZ
         8yQozF+tnXFrgqZRLvrBFlOXCg3a7DQhO4kwLyLph2lOqr7NMexvz4ju6GWWnvPxd9Ym
         uf5p7/ZVXp4tEh6E4p5sab48OiE4JYyxJOczp8r9bGjIMpRw3b5h7lCCTBUIdgj+BR1g
         u24Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zgR2ihUi880Qaz/BxMXPEek8xT418adyP91s0DsX9sk=;
        b=MTUiPtrHNhrzktHoLWdo3QBgQXPbEiMKA3+EblBOgddsPWeC0D0daOst3EpUg75oPO
         cMnUdjSkP9PsjD4EdJOLqyBv0SDmqGWNR/YT54+4z181g+B8JGbzK+chEOMJeBiP63ZF
         RFzoGgmwTNM8EIGhIcbYkHsR0qvTlcaDFSB27jh6PioQMMlFemkV0JzS7kKJwIkEdYSo
         Fk+B/22Bvh2wB70YzDUHG0Af1CCvrWlKvEpdVhw9zQsHAvDChGBTatAky5iewHcbnCwD
         Dfa/2twEpu+UQx4qdZR0fDQauHM4KYkFkefwqbfseZKQGgjixAKfxO3GTT0VtbMIjZi1
         xRHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WaQJkyIY;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id q2si445298pfc.0.2020.10.17.22.32.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 22:32:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WaQJkyIY;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id w21so3354699plq.3
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2020 22:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=zgR2ihUi880Qaz/BxMXPEek8xT418adyP91s0DsX9sk=;
        b=WaQJkyIYESA5f0HSv6tCYj+3XIDSq33t/y0ocazCXiJb2w0J1flFHQiX3g9s4C0jQM
         c6GwEBFn0d/inp4GcUcB5Ky2MLZ1vi+oi2cO3y90BALQM0i41RjBpaE+xJqx0EoD/AUN
         HDMr7Cf0PdOPNFlMrfWs6hUrR5JnMgfylJAD9L44hpGHSTKO7MFl2aasspmIbIpRV4dL
         QVqS1iIeP6bzhgZsJX9LkK8UDWlrwCQB2DjGpL//l2GjBD5F/l29ufeVBfuGcutNp6y6
         tzQuh0j6OqIr/uHsK4xFEV902O5+cj1wFwKd5bhdm2ZvkJqwQpAw6QvKPcQZYIdB+Pn3
         q61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zgR2ihUi880Qaz/BxMXPEek8xT418adyP91s0DsX9sk=;
        b=bLwopEZ3IwYAaxRp2fw5/cxNVct451ux0WOoqrf27O+/9Uh3ugV6Q6cqbEpqYjuI+/
         e2L9gE94hcHknJL+xZW6Nx/PjjYwxh3AE3oX/y53MzMolxo0ApL7fzWofQa9+RO1BEcK
         oyOkoeM6tdUlsgTJRB85ORQANePk7jQM5ADzt2cN6IrwSs8qKxUGzqGY4AXdE2TDykCm
         SJ1rjrgUGZy3DTTfA0/QkTNOA19CktLioGyCL4t/ZnnvaR5IaxsaISGLzJUp3zmj0l5o
         sv4ABBBUPqfhE5QH29YAGj2Hmi0YVqbaDA3EcgYB4hGQNknJtVVdGVi8Q1iL4rM4WMmx
         sHZQ==
X-Gm-Message-State: AOAM531aLd5sb9X96I0Z7bPQj5bXPkBSqX+2ZciW1EWRjDqtGmlycEQw
	IbxY2ICdRDUOEDSrApVxh9U=
X-Received: by 2002:a17:90a:f198:: with SMTP id bv24mr11778488pjb.230.1602999168785;
        Sat, 17 Oct 2020 22:32:48 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id n5sm7688732pfq.46.2020.10.17.22.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 22:32:48 -0700 (PDT)
Date: Sun, 18 Oct 2020 11:02:43 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Sumera Priyadarsini <sylphrenadin@gmail.com>,
	outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy][PATCH 0/3] staging: Replace
 snprintf() with scnprintf()
Message-ID: <20201018053243.GA98400@ubuntu204>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
 <20201015192157.GC20115@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201015192157.GC20115@casper.infradead.org>

On Thu, Oct 15, 2020 at 08:21:57PM +0100, Matthew Wilcox wrote:
> On Fri, Oct 16, 2020 at 12:41:42AM +0530, Sumera Priyadarsini wrote:
> > The show() methods in device attributes should return the number of
> > bytes printed into the buffer which is the return value of scnprintf(). 
> > snprintf() returns the potential number of bytes that could be written
> > which may be greater than the actual length to be written.
> 
> There's a big patchset just gone into 5.10 yesterday which adds a new
> sysfs_emit() for show methods.  You probably want to use that instead
> of scnprintf().
> 
Hello Matthew,
I am able to build my staging branch into 5.9.0-rc8 release. Can you
please suggest how can I get 5.10?

Thank you,
Deepak.

> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201015192157.GC20115%40casper.infradead.org.

