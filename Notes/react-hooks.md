---
updated: 2026-08-24 17:01:28
class:
  - note
created_on: 08-24-2026
tags:
---

## useMemo

useMemo is a React Hook that lets you cache the result of a calculation between re-renders.

```javascript
const cachedValue = useMemo(calculateValue, dependencies);
```

[[https://react.dev/reference/react/useOptimistic]]

## useOptimistic

useOptimistic is a React Hook that lets you optimistically update the UI.

```javascript
const [optimisticState, setOptimistic] = useOptimistic(value, reducer?);
```
