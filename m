Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7019910FB
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 10:09:07 +0000 (UTC)
Received: by mail-ua1-f52.google.com with SMTP id c31so2595526uae.10
        for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 03:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=m9Xlm7ksNehQMCZ/ffNzUC+KW9kXIJZcRlu7bxLTlXs=;
        b=BMh0mfTqxPGm23E6nSUtxr33OpGBZVjvjGBa/aGFWlzyI1dntGZ+s+ZLzR60YoGM6F
         7Q/I/M0otb3iMT4lwZs+YElf+rN7Wt6BMD7iNqFToAsbznw9omgETEddmieUkuVL0uJz
         1G/cY+ogYwo9vyBkALj3YRr9ulNZaBTD41QABRkZYRJE+O1jZJt8DfgjxTcW74VeoQY8
         UC1EOE+Uz5GrrQ0mIyNGH2yGv+OAhsW4lMWPBy2PLE7qrEzZI9T12pNWQU0qkANU1oTk
         n+us4qy1xlARzpzn/a5mhbqP3l2typZiGzN95mwOVqvOBxig5vmD8fJpIzQTTecBesHD
         X+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m9Xlm7ksNehQMCZ/ffNzUC+KW9kXIJZcRlu7bxLTlXs=;
        b=OLqUNsDxLHI2dBCLjMLpjA1+hlGxuebuCRpRp7Yx7xWO90X8L4ArZYIK6TturEvZ5x
         XINJ+rsK+UYkDr3cUnRvvea9YnTO09PRBo2aUwvZEdNvACIdPryQThMBQqJ1GzGybpF+
         FM4I/acnu2fW+JU913xJtBQrfv9pPAQMHwOfe5QMORgdIs9LJIze0IKQpBut9URPyS16
         B69dL4f+qJc98RHJU4guk02XjlRiEWZchEZhmWcH4SZLZxd1cmQgm4LJEjcONfzPe/eG
         dWqH1EEu2m/Vgd8puzpnaeEjTcfVhh8R7kcIHXZ+VZ1fgVdVJ8qsfRqTN9Rr+o1PcV9R
         aiZQ==
X-Gm-Message-State: ACrzQf3or2dTI43khcEVrhxbw7pNps1rB+hh1RRChicc/WPCSYJ7B0wP
	o89O1LgXB+haP0ICxgtQdd9fxkn0TC371f8mQWdYqlVUynJpmpFu
X-Google-Smtp-Source: AMsMyM5DTIj9deh5KT/3y/GuNkkeZQrICbcv4dAHN+GAffIqhYbkYKlb+MIsKDXeif8xWzXW8eSCophP6lqCgX0cdbM=
X-Received: by 2002:ab0:4715:0:b0:3ea:d249:de4c with SMTP id
 h21-20020ab04715000000b003ead249de4cmr25208914uac.80.1666778946266; Wed, 26
 Oct 2022 03:09:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: jovial umwari <umwarijovial@gmail.com>
Date: Wed, 26 Oct 2022 13:08:55 +0300
Message-ID: <CAMk1CBOTuZzKc2eG7CSOukLkd0tPe2LZHuYBJYN4aLBesswBtA@mail.gmail.com>
Subject: Submitting a Patch
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello
i am facing an error while i  i am trying to Sending my patch with mutt
  i did some configurations  but still there is one error i am facing
<<<SASL authentication failed >>>

i will appreciate some help on this
Thank you
