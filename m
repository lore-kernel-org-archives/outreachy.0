X-GM-THRID: 2747840593920
X-Received: by 10.152.88.40 with SMTP id bd8mr1184105lab.0.1424686544560;
        Mon, 23 Feb 2015 02:15:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.172 with SMTP id gb12ls520227wic.21.gmail; Mon, 23 Feb
 2015 02:15:44 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr1141068wik.5.1424686544256;
        Mon, 23 Feb 2015 02:15:44 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id ew5si648788wid.1.2015.02.23.02.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 02:15:44 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id bs8so15385818wib.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 02:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=ahBN+aojnAUXmFI4gjGYh7Q7uh8O9ADSpx+Y1qwCVAA=;
        b=dIoex0WJEn8ngSXj37qQgGFD7WFu/6bXWBsMjbnKpVcLO6P9+T9Z1jxHKR0LnzrcVQ
         E5EhcCkMzTIzCF4a21fb9OWzRg8k5tWVEzogpfxaLm7or4lcXsL0N8wUmDJYhzrggmEz
         xtgNMnkpITf+XBYizCJOoBxi9g+nJAHrNIyNDtrBy3SGxR77kmORlW/Lm3jaZYcjQ9LI
         kR63dv1WnX70V8TzFG8sqbDV2NfkU3O3s5ZXvyZwM/gaqNuZGxB90hTASwUL9oKgDTzT
         yOkZiUskKEsqRmn74D8Rxv7ABi4cfWV55GplJi6rkINEThPbV+HF0t6q58YwlCOTDcQz
         46yw==
MIME-Version: 1.0
X-Received: by 10.194.122.196 with SMTP id lu4mr20886137wjb.154.1424686544162;
 Mon, 23 Feb 2015 02:15:44 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.216.178.66 with HTTP; Mon, 23 Feb 2015 02:15:44 -0800 (PST)
In-Reply-To: <20150223094130.GA4668@gmail.com>
References: <20150223094130.GA4668@gmail.com>
Date: Mon, 23 Feb 2015 12:15:44 +0200
X-Google-Sender-Auth: y5MmxRixYsc7Qznoa5wCqat1w1Y
Message-ID: <CAEnQRZCC8HhHULcgoksQrsa+h=fe_OjcNjo2LRrV8wkyAJm82A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Remove unused variable
From: Daniel Baluta <daniel.baluta@intel.com>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 23, 2015 at 11:41 AM, Vatika Harlalka
<vatikaharlalka@gmail.com> wrote:
> We only need the last 8 bits of the offset variable so we can
> directly operate on it instead of introducing unneeded
> newoffset variable.
>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

