Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DDA7C
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 03:18:12 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id gb19so16152356pjb.1
        for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 20:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/AsPTKpYQsviTj9ZhZ2Dhquh0fxVzEjD1LXW9W6crGQ=;
        b=qI53Ozt/w81rdL5YjB3Ty89usav4/gLUt2TqZaf2RqImxBwPXuwugcGaFv+wIj/qsQ
         el51+XKl7r0mwuq82Y7xN+YWASu5du01R5iDzkRlrvaclwtKB9HYxUcjm0BOcOyCLKW2
         4O/fP03vkFLVbnDhUfvZUa5tcowZJHB14yGGW8angYYMW4Unh+HatYJT9IgmA05akYEQ
         rLRoMOEGR9wDW2c6sz9h72EbE+I0bnUXnA+DhpQ2Z8ZykZV1xUuUKMp5hUEKy0834vMp
         is1TVZgRCWxarqN9IT5GRlvtaZI2184QTLNT3zY7s1VpjbZLQJKHIc/NqNbt3tfbaehH
         FHJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/AsPTKpYQsviTj9ZhZ2Dhquh0fxVzEjD1LXW9W6crGQ=;
        b=RS+yMVFO4fiXfFnx2XDInTszwPrxnx7sQFSQ8ZdtUOJLtH+Wlf6F+eNPBWLWorqUy3
         ECSDXp7AizkuPmDTjsldl2AxckTxfEeOVJPttC0y+j5jRw8KTNhZyRrWtxC4CTjY6VM9
         CXKW5OoBUZxHRGdoj6q/ykSOrbx1Pye/sktTVwg0n5bMIVYNvoGszUXck3FzFtGBdRtp
         /HwlPOrHS5+xVVHhXq1T3JYiSzRA8/kmORgu4trtun9Abptz+j0ZSbAvfL6ot0ovPgyz
         W1fzZ7OGr8/gEtNbP/higCLm9EXEpIcNfVgBanNPFtoGIcq5Y/jeEo0Y6Smuk7dgQL0y
         tfEg==
X-Gm-Message-State: AOAM532P4Zw8heR+vKBrII7PNDfzD50X4cG3Q/JhNQPpkbmqYofpVXyC
	YeatsPDgkd3rqrS78x5m/AYA1jar1yFRj4qVRVQ=
X-Google-Smtp-Source: ABdhPJyCYqPUU/VKj9kJWravQ68752rK01jGSqt6pQdJ7HF7NEs2Dcnc3gKyGU8wvOCE/XpYj5nw9eoNxbRKEoZ4hqs=
X-Received: by 2002:a17:90b:17c4:b0:1c6:e74b:31d9 with SMTP id
 me4-20020a17090b17c400b001c6e74b31d9mr2293651pjb.242.1648523892505; Mon, 28
 Mar 2022 20:18:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <fde3e9e7444d85229a80eabbfeb6abade96d51a9.camel@gmail.com>
In-Reply-To: <fde3e9e7444d85229a80eabbfeb6abade96d51a9.camel@gmail.com>
From: Roopa Prabhu <roopa.prabhu@gmail.com>
Date: Mon, 28 Mar 2022 20:18:01 -0700
Message-ID: <CAGe6so-nfZGbA2fv_puOoPjzTV=KkNEGSpz=SvFQz0Y2PAwDzw@mail.gmail.com>
Subject: Re: IRC Logs for #outreachy-kernel-networking
To: brunodout.dev@gmail.com
Cc: outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

This is great, thanks Bruno!
I have added it to the resources section on our starter task board

On Mon, Mar 28, 2022 at 6:23 PM <brunodout.dev@gmail.com> wrote:
>
> Hello there!
>
> Earlier today we were talking about conversation history on
> IRC (#outreachy-kernel-networking channel). I think it was
> Alaa who asked if there was a way to read them.
>
> Since IRC doesn't implement server-level message history, I
> offered to send my client logs, as my client is expected to
> be connected most of the time (no guarantees, though).
> Considering Stefano said it was okay and no one else
> opposed, so I made a script so the logs are available at:
> https://share.codeagain.dev/outreachy/irclogs/%23outreachy-kernel-networking.log
>
> It's expected to update regularly, but ping me if they
> don't. I also recommend saving the file every time it has
> new information you find useful, considering that I'm not
> 100% sure my IRC client won't delete old messages or, which
> will be replicated to the file in the link. If I face
> downtime (sometimes I run out of RAM) the logs will not be
> recorded, though.
>
> I hope it helps, there are some interesting discussions
> going on there time to time.
>
> --
> Sincerely,
> Bruno | Pronouns: they/them/theirs
> IRC: CodeAgain
>
>
>
