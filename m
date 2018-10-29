X-GM-THRID: 6617780359505379328
X-Received: by 2002:a19:d8da:: with SMTP id r87-v6mr1153733lfi.7.1540822527171;
        Mon, 29 Oct 2018 07:15:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3e03:: with SMTP id l3-v6ls930792lja.5.gmail; Mon, 29
 Oct 2018 07:15:25 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dGX/jnJvOQEVBFonAbeVQShdI1ObAwtkqvowvN9qi0Gi3BBXyMzHoAXqmEfGDJ5u00BBOp
X-Received: by 2002:a2e:8786:: with SMTP id n6-v6mr680972lji.29.1540822525820;
        Mon, 29 Oct 2018 07:15:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540822525; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDPb7TCzpGh8gVbqhhWXZd0AuU99kGThjPFnR/3VmQpwiZvbTIOWieYrZc0wTAFw4j
         q79YUj/hs05YNLQefluH5lfQDIBgewr9qA6qjtDiuWCCLbLpZ6X6X0l3yJfJGwOuwqFr
         l5Td82A2on/IG9m6Q24H6FytB93J+J58KtlMcyAXOlTIbbL3fYT2HNW83w3JUTmLhHVi
         c+0hIR/2bw0js+g4fHbY7F1FgHJ+H1knFc0yfWWohklHLwnEbD/iMLM6tKK7wLNwqOSV
         sTNbB4YudLu0JvgbS4GZ7eaKEwqYim/8BmVtRlk6XLi+WYKrbvoT+NoNdbeKEhbZQh5B
         /Syw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+PatqnbB0vb4MqYBXcafXxGgRC6XC07qpOpJLl7gOVQ=;
        b=P5bNxAbp3zQXLUX0AS1aecwjeKcZ+Gys07vQEic1oUfcT/SWMK8oL0W+bWwGrVTyfg
         uSD92dvJ8b89HedOGfIE3rs0lMXUZc53TqrgQ+qfMS4ktfeyMPZKi/IV0MaooCTqIC55
         MG4GlZ/GAd5codd/w9jpFA1FS35nIKGqdgHIahIH/QkmGqEYmAZ5TXKLnpQ4KIRqDnnh
         u7vtTgKgexBBS7mptgyO2MG1aaQ/cf0Q7ilw59fn4UwpX2AzPio/Wu9UeUQAfkUlUCsy
         0J2eu1hEX/hAVhD7kH9QR+ZceA3yt/taw4mn/bFdPQSu7Zsf87klBKVwmB9UmVgWiogt
         FwiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r79-v6si782916ljr.3.2018.10.29.07.15.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 07:15:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,440,1534802400"; 
   d="scan'208";a="353325771"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2018 15:15:04 +0100
Date: Mon, 29 Oct 2018 15:14:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    rspringer@google.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gasket Create a memory
 allocation path
In-Reply-To: <20181029140731.GA18826@kvasir.local>
Message-ID: <alpine.DEB.2.20.1810291512410.20217@hadrien>
References: <20181029140731.GA18826@kvasir.local>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> +err_alloc:
> +	kfree(interrupt_data);
> +	kfree(interrupt_data->msix_entries);
> +	kfree(interrupt_data->eventfd_ctxs);
> +	return -ENOMEM;

Besides Vaishali's suggestion, could you also make specific tags for
specific cases?  Please first read this message from Dan Carpenter:

https://plus.google.com/106378716002406849458/posts/dnanfhQ4mHQ

julia

