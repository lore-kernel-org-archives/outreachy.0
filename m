Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF9E1864
	for <outreachy@lists.linux.dev>; Tue, 15 Nov 2022 04:36:11 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id s20so8836079qkg.5
        for <outreachy@lists.linux.dev>; Mon, 14 Nov 2022 20:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gI4CGpQBW2XUvWyVn2tELfbzYFnsrC4BeEbdSqnqUkI=;
        b=IUGpChJsvlkXkJ5fnKGucmgLAH202Nq9FAQmEGinCorrg5tz1jpNbu9KE89Q389zRB
         8cuh9po8VI2TJwvgGWdCnTRyplpcX4zvBqCrpi4FF6qAHiuYRhYndB10nnqZtvctv5xL
         729xKJvIkRUL65CoTNMp/9X+mb1vfH0WEcAULafC/kd8U2Ju0aeouncP/7beERqybxzK
         OCBRZn64sU0t8fFgBRXx4DvQj2dFkRSHbwnKr4mSl4t11NlUrirbnV9IpUuU2WB+/DFX
         s6FqsA2hJNWRueu2BVaP848GNC5nakrYz0uSBqrhJD0WWaxCnA4fHjOMaatQr0DdXlLL
         kGrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gI4CGpQBW2XUvWyVn2tELfbzYFnsrC4BeEbdSqnqUkI=;
        b=QMgnAOgjbdSrLkmrZ4wsI5W1K6dCHgCnp5xbHkI8wT91ijj804SgVgWmIK+4N/7oxq
         qYYf6vM0OJnBC6cPPv5OienyZ6BYHN+u/00jFSYp9W4NenebJMYFnCKhmkqwNGm8gOIM
         OVqvVAQjC3KWV7o1+f7TvhIiq5+BzYzM4PGc5+G5jMCYqwjnzX0W5AWcCDqQD23V+29n
         RvwW9NJVPTbyg/3sslpLlg76+8lYxkDdKLV8VuGR0sY6xxCzBPLk9Ip1PrRr7tfy1B3Z
         2SDmy9/eWHZf3speIoIJGMfbo37uSZOXFQJRqW5Zw9z1KzWcCCwWDh47gucEM3sMtOLT
         tW6Q==
X-Gm-Message-State: ANoB5pl2fIoUeDyZ/tEJ+xqDq30wXDuliE6Jv5C+fFuzKBkC6AdLFif1
	9DX1vDreVDkh392brTNjIa6mu61CGyOH7Y8W5NM=
X-Google-Smtp-Source: AA0mqf6YaXn0fl76s2oGVqar1Er321I/GMJmnFUdhsmdHG+bq76tMaid3VFAHhyKGe1AJQ1Ydj+sdFqVqb5XUwFYxhU=
X-Received: by 2002:ae9:ef53:0:b0:6fa:4a82:1152 with SMTP id
 d80-20020ae9ef53000000b006fa4a821152mr14474482qkg.504.1668486970063; Mon, 14
 Nov 2022 20:36:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: jovial umwari <umwarijovial@gmail.com>
Date: Tue, 15 Nov 2022 07:35:58 +0300
Message-ID: <CAMk1CBNq41M0Kq_LMZ2o2ixCnWofHknKsUaoHUwriGV5oesbSQ@mail.gmail.com>
Subject: Help
To: Alison Schofield <alison.schofield@intel.com>, Outreachy Linux <outreachy@lists.linux.dev>, 
	kumarpraveen@linux.microsoft.com, Saurabh Sengar <saurabh.truth@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Greetings to everyone
Hope you are doing well
i  am Umwari jovial  an outreach applicant
in these past days i faced  a challenge  when i was configuring the kernel
i went ahead and changed the kernel version in .config  then i had to
do make j4(i have 4 cores) and all was well but when i restarted the
computer  i was not able to access my normal  operating system and i
had to use  the recovery mode to access it  up to now  i am not able
Note: i am using Ubuntu ,
Running  Linux natively on my own machine.
other setups are working well

Seeking for help on to resolve the issue any advice or help i will appreciate
Thank you
