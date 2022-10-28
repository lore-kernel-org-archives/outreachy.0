Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A8112280
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 19:10:44 +0000 (UTC)
Received: by mail-qk1-f181.google.com with SMTP id 8so4077957qka.1
        for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 12:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9H7RdkDB3QH4abEjkWmxVVQirpe62yWx8PTvF0uNSwA=;
        b=FNqq+0sd4dXcQNsQInEhM3ovJYmtgocvdFWNhIyjhKjV4VTwyUag+gyiqtjjxmI/uX
         eP5j+DeLcxu0c8q5NUMwJj/IaaKNz3utGHAy5c2845CAqAOCuTYLYBeOQtQL7OFs/uhO
         a6MqMFDpPLS+B0SJHhffKogQBfR3oSAZXBJvJmluE+VU1+r/sfU6mTAFbWXjXoB74Ccv
         E7m6PnzbQ9HgyzmBF1NphErxZXNpl9ydLxFfPonIkDgO4uEA+EyUYXq2il1xriRakuC9
         Bk8Zdn11XM1OLg1iCxY6Plz3DMJYvrg1JJzJfWhB9yg8MjIBfDg0QkdJJVBbvqQ1+OGM
         jaxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9H7RdkDB3QH4abEjkWmxVVQirpe62yWx8PTvF0uNSwA=;
        b=zrSsLbE3gRL4wj2tcwCJdzKBQlwakM81Ps5BobcjlRqpYJLiGP39RsOAagCijzTzgS
         QSpSTv/FiYgJS310/A1/3IMnKSxTdBSgrqCWyTrKQQSpG7gog5nZevoPZ1OLBUdQ2nfq
         vErhoofVvTeabIaQathRFyI8C/3zF+E8tL/8nzEtUZ+95vB7Bi/f3htqy7EvY89jR1yP
         G8Sau7amguJwrRy75HGJohEN/0TUoIMvmgFv7aerhxvNi8vm7xMBBnZ0L+P9vlfVJywZ
         lWmAK+5NycQClMxUbfqGdODEEcr8iZtEKjspU3BfBrAPPSwPfDJeKPYtdpJims+MGUdd
         lvPg==
X-Gm-Message-State: ACrzQf2QObBvHz+N2FnM27xnkmgISq5yxbe/KyCZX2XYHXtuHZO/VUs2
	+Cuye7ELGkrpTl52gAk1NyWvOeljge1USMCgFFo=
X-Google-Smtp-Source: AMsMyM6nJXk5CtbG7/96p4NPlloP0QnAAxTP9sm1zHibKfMiCgO1XnkoBZPjnBsNWbhUI8qqzEa9V02Jsq/mhlqDgQ0=
X-Received: by 2002:a37:f91d:0:b0:6f9:60e1:bd70 with SMTP id
 l29-20020a37f91d000000b006f960e1bd70mr599965qkj.29.1666984243169; Fri, 28 Oct
 2022 12:10:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAHJEyKWCVPLYvGB=oeDoZWz+uaBMrn2JhGgjN6pvdhjggOmAiA@mail.gmail.com>
 <Y1wiBgPE7sFSVQTG@aschofie-mobl2>
In-Reply-To: <Y1wiBgPE7sFSVQTG@aschofie-mobl2>
From: Tanju Brunostar <tanjubrunostar0@gmail.com>
Date: Fri, 28 Oct 2022 20:10:31 +0100
Message-ID: <CAHJEyKWwg-9Aca5MEpp2+R7xt1C9Je5ooodr4Ca=2xuN4_EkgA@mail.gmail.com>
Subject: Re: Outreachy first patch wiki modification proposal
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 28, 2022 at 7:40 PM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Fri, Oct 28, 2022 at 07:23:47PM +0100, Tanju Brunostar wrote:
> > After setting up my mutt with Gmail, I tested it by sending an email
> > but it did not go through. After some research, I realized that Gmail
> > no longer allows less secure apps. The way around this is to set up
> > two step verification, then generate and use "App password". I would
> > like to add this to the wiki, as this will save others from the
> > additional work. Please let me know if I can proceed.
>
> Helpful tips are always appreciated.
> Please post the actual edit here for review.
>
> Alison
>

My changes
original: If your gmail account uses two-step verification, then you
will need to generate and use App Password.
modified: Next make sure two-step verification is enabled on your
gmail account, then generate and use App Password.

Tanju
