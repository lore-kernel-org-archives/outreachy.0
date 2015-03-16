X-GM-THRID: 8221215424512
X-Received: by 10.194.11.70 with SMTP id o6mr9033196wjb.6.1426498100295;
        Mon, 16 Mar 2015 02:28:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.38 with SMTP id p6ls547663lap.17.gmail; Mon, 16 Mar 2015
 02:28:19 -0700 (PDT)
X-Received: by 10.112.9.65 with SMTP id x1mr9156231lba.16.1426498099713;
        Mon, 16 Mar 2015 02:28:19 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id el6si648241wib.0.2015.03.16.02.28.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 02:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id j2so37676142wif.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 02:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=84VPTr8Xfrnbn20jk0/OmEmsXNPMQaok/kX8+/3cLHU=;
        b=PgtzZ1s4YNZKIyd+G6kgGI44Fr0/pP3PLiGwmOa5fyYw99Kg/ToyawY1DaQICGvyJs
         i3p1mfr7G3Mb5G3NOO2gttqSy6NBcYvqfTcZi6cABnmMazc5QlMwAH9BZcECXSvpknuJ
         bsZRkOQMoUpU5lDTNhU9csUf1r4xMIR9z9WUE0mF6cfaXM38lkUHn+oruld8z5iJsNas
         x/M1KyKd3LmNUmIs16LMjG55krZ1WfJ9HBw/LXq8jcF8W5swhzhOJ14g+kR84VO4MH8/
         jfMYof3mXfpzBVn+bA7yYVTplnTTp9n7L+i6e8k9t6xGDFCGeRPU8CHWujCi0Ik6UtED
         N0pg==
MIME-Version: 1.0
X-Received: by 10.194.210.103 with SMTP id mt7mr122583331wjc.103.1426498099604;
 Mon, 16 Mar 2015 02:28:19 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Mon, 16 Mar 2015 02:28:19 -0700 (PDT)
In-Reply-To: <566d36ca0be1b53d708969d2fa30b1bcf03d6aef.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
	<566d36ca0be1b53d708969d2fa30b1bcf03d6aef.1426353884.git.cristina.opriceana@gmail.com>
Date: Mon, 16 Mar 2015 11:28:19 +0200
X-Google-Sender-Auth: s3k-NhSXLM9vTcF7mSWGPQqWhUQ
Message-ID: <CAEnQRZCCe5P=pORPu-ndG+LCzWw2itNCsutfJgFCJ1nJVvi-HQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 5/6] Staging: iio: Alignment should
 match open parenthesis
From: Daniel Baluta <daniel.baluta@intel.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 8:53 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patch arranges multiple-line parameters in accordance with
> the parameter above them to improve coding style.
> Found by checkpatch.pl
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

