X-GM-THRID: 6392973755593785344
X-Received: by 10.157.62.227 with SMTP id b90mr1085034otc.53.1488551026441;
        Fri, 03 Mar 2017 06:23:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls9151876otj.6.gmail; Fri, 03 Mar
 2017 06:23:46 -0800 (PST)
X-Received: by 10.157.34.114 with SMTP id o105mr681856ota.48.1488551025971;
        Fri, 03 Mar 2017 06:23:45 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x230.google.com (mail-it0-x230.google.com. [2607:f8b0:4001:c0b::230])
        by gmr-mx.google.com with ESMTPS id 13si960065iti.0.2017.03.03.06.23.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 06:23:45 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::230 as permitted sender) client-ip=2607:f8b0:4001:c0b::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x230.google.com with SMTP id 203so13624981ith.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 06:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qigaV6eWHwGkzOB1oFauOiLcPkmRBcQyesfdltnYJ9A=;
        b=DjshX0oUFeXUZyVZu0TPKP/44ugRhR/94L1E+Ls4VhRthb97oD4yexRHcIM+i0QSNQ
         b6WK2+qLkd/xQpd5jb1n9NePWWe7IqZBKuJwkFsX1I2zR0AcNGckeSmKA/Fmmc32UZvs
         OaivwnnzRFDQpJ4kbE6kvpLBUkr5/lZLl7vFgXFxmD0JCJBN5DmCQPc1mldYYpP8WuIN
         sh7IbwK7OCRf+KMo8EsxyzaH7A6ytmXm7gTlRitCZ+BrxhHFk4NP65EcuK3HuCFHbph2
         eUq/zrbgO3L6cLL6Y/GZ8xz/iafHv4aADX8tjAxeA5Wn6/OTxq6NQyI7yOUEd0xRYnIF
         cisA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qigaV6eWHwGkzOB1oFauOiLcPkmRBcQyesfdltnYJ9A=;
        b=OEDzQGKE1Upqc8z0vLsRJMJ8u/un8lqza8dmSonMWjGNkNC+ImwurRmwOw2iv4CYnl
         I1yBx73L4sv3rmrE+uNAwgiTaLdNAUWMPEx3phQz8GN2FiBKYI7FIeaiIE+AXcnl8Mb0
         uqDtIu2FqUVbuwASXLeLy5+6RkeBP+lVnKKWGIsuBQtf0GAIWHjjcj41CHr88y5ACqYC
         FPZpD8aRP3ZrPdOq0tvTA9xngg6LEMoLqOudjE4BY0atULC7NDkuMCwtmcuxZeTcLcbW
         NOWqRhtibN3h4vaQQlPAl71FPtk7M/WUgMrciGUhou6XlcjL+PwDJq+d2CkqwBueIew5
         +HCg==
X-Gm-Message-State: AMke39kJQ993OvSAEnRQxK9y+RnkY9koYBkxTkDwzK1gucGLFdymhcUXXvwxLkZvSarcV0Nl62V3mSigHLrv5A==
X-Received: by 10.36.238.202 with SMTP id b193mr2865613iti.39.1488551025808;
 Fri, 03 Mar 2017 06:23:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Fri, 3 Mar 2017 06:23:45 -0800 (PST)
In-Reply-To: <20170302184310.3527-1-diaconita.tamara@gmail.com>
References: <20170302184310.3527-1-diaconita.tamara@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 3 Mar 2017 16:23:45 +0200
Message-ID: <CAEnQRZD3Gw3odgRd+NwB9r_UXNCKk3ad6OS9VfgYPbUuh5r45g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] staging:cxd2099:Remove
 redundant code
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: mchehab@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Tamara Diaconita <diaconita.tamara@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 2, 2017 at 8:43 PM, Tamara Diaconita
<diaconitatamara@gmail.com> wrote:
> Removed redundant code marked with #if 0 to fix the following
> checkpath.pl issue: CHECK: if this code is redundant consider
> removing it.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Looks good to me.

Reviewed-by: Daniel Baluta <daniel.baluta@gmail.com>

