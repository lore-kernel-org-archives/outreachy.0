Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD3810FB
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 10:27:53 +0000 (UTC)
Received: by mail-vs1-f47.google.com with SMTP id v129so1192182vsb.3
        for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 03:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OTaRdgzm3/DqFZ2Ur3Xk5jUyJ4xKxCL3nXrL/QcOmrE=;
        b=CQ0e/wfWfIe7NSUmn96AZfw1QDkX8m2nkysCap50wdlPvqquEzxolh+3yLRFrS/4Zv
         g9pbA5pt0khIr2PDLPg5IaBBrugfPS61LKSSMi8z5CiErUmpK0M2M9DYlDi9KSKY5u/a
         0oWbnx8VjcF+hxiVJD75rah9jtZnfVP7aXMbxBTGV0DcETzbC+R7qPKfCxLrmiUv0kjN
         /20eS0O4j5qvltlR/5f66ZE8FbmLEhZ8CVajXZ+F+YO70xmsgINY74rcEoSw5zIOL6u6
         eNj4/phksRJT2xd4CscUHHdGc4tgTHSdNg3Uxf4KLR2vr9K+Gi/DDBUe+MGFr19Pc8dJ
         2jRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OTaRdgzm3/DqFZ2Ur3Xk5jUyJ4xKxCL3nXrL/QcOmrE=;
        b=BVDd+EZGTRCgi4HUN7yKVXc6McAz6iskGZXpHXv4vaWgUZDvtf2AV5OxIHmHHeOEBj
         iggjrbtI69hIKeVI8v6QPikRO81KP7hX5vQzpv+V4PzRy/LQBcTvYWUvKs5ENNUgaec4
         t7M5ydH7z+tSOuVSlSBvfOUcAJj1RjtFcCW9JT6HuvM38elioK9DiCb0jcEWc9dJXSHz
         +cu2oXJGhnpVOH/IGTD3nyMhlE1FrNs0+7qVNJ5IeP4w1k/jg6KGiwsNJpPkm6sa/Rdp
         F9QnaGt2CHO/L9UwPUb7YwCFgvFakQx/eQNiOISKwPlsZMwiGmnsEN5Gz7WQANiwXPPx
         oLGA==
X-Gm-Message-State: ACrzQf09qAWF8wkR9GOSdr8J0vEGFa1ur8/72nT14gzI7nx+AK8sLsvA
	2FY0ZvUSRTToiwC3swHssBhryx+B40D4p+6ofC+tZ0RbVLyauw==
X-Google-Smtp-Source: AMsMyM6DPjqWjlvPnIDRr5uZm3pGrD0105O/XIhQY9PZfi2W83i6AhDEc6mD0dpi3IrNxf4K3Mno9cfmzwH4T0tHRU0=
X-Received: by 2002:a05:6102:94e:b0:3aa:13c2:ba1d with SMTP id
 a14-20020a056102094e00b003aa13c2ba1dmr9094009vsi.78.1666780072178; Wed, 26
 Oct 2022 03:27:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAMk1CBOTuZzKc2eG7CSOukLkd0tPe2LZHuYBJYN4aLBesswBtA@mail.gmail.com>
 <Y1ik6/05rA+SpeKu@debian-BULLSEYE-live-builder-AMD64>
In-Reply-To: <Y1ik6/05rA+SpeKu@debian-BULLSEYE-live-builder-AMD64>
From: jovial umwari <umwarijovial@gmail.com>
Date: Wed, 26 Oct 2022 13:27:40 +0300
Message-ID: <CAMk1CBNV8B9UWZs9U9u901b-hYPWTAADTMmdQW5tVnzLf0YODQ@mail.gmail.com>
Subject: Re: Submitting a Patch
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Thanks, let me compare

On Wed, 26 Oct 2022 at 13:18, Deepak R Varma <drv@mailo.com> wrote:
>
> On Wed, Oct 26, 2022 at 01:08:55PM +0300, jovial umwari wrote:
> > Hello
> > i am facing an error while i  i am trying to Sending my patch with mutt
> >   i did some configurations  but still there is one error i am facing
> > <<<SASL authentication failed >>>
>
> This is my current base muttrc file. You may want to compare this with how you
> have configured it for your mail service provider.
>
> HTH
>
> ./drv
>
> >
> > i will appreciate some help on this
> > Thank you
> >
